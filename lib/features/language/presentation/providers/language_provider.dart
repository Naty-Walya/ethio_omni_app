import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ethio_omni_app/generated/app_localizations.dart';

// Supported languages
class Language {
  final String code;
  final String name;
  final String nativeName;
  final bool isRtl;

  const Language({
    required this.code,
    required this.name,
    required this.nativeName,
    this.isRtl = false,
  });
}

const supportedLanguages = [
  Language(code: 'en', name: 'English', nativeName: 'English'),
  Language(code: 'am', name: 'Amharic', nativeName: 'አማርኛ'),
  Language(code: 'om', name: 'Oromo', nativeName: 'Oromiffa'),
  Language(code: 'ti', name: 'Tigrigna', nativeName: 'ትግርኛ'),
  Language(code: 'fr', name: 'French', nativeName: 'Français'),
  Language(code: 'ar', name: 'Arabic', nativeName: 'العربية', isRtl: true),
];

// Language State
class LanguageState {
  final Locale currentLocale;
  final bool isLoading;

  const LanguageState({
    required this.currentLocale,
    this.isLoading = false,
  });

  LanguageState copyWith({
    Locale? currentLocale,
    bool? isLoading,
  }) {
    return LanguageState(
      currentLocale: currentLocale ?? this.currentLocale,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  Language get currentLanguage =>
      supportedLanguages.firstWhere(
        (lang) => lang.code == currentLocale.languageCode,
        orElse: () => supportedLanguages.first,
      );

  bool get isRtl => currentLanguage.isRtl;
}

// Language Notifier (Riverpod 3.x Notifier pattern)
class LanguageNotifier extends Notifier<LanguageState> {
  static const String _languageKey = 'app_language_code';

  @override
  LanguageState build() {
    // Initialize with default and async load saved language
    _loadSavedLanguage();
    return const LanguageState(currentLocale: Locale('en'));
  }

  Future<void> _loadSavedLanguage() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final savedLanguageCode = prefs.getString(_languageKey);

      if (savedLanguageCode != null &&
          supportedLanguages.any((lang) => lang.code == savedLanguageCode)) {
        state = state.copyWith(currentLocale: Locale(savedLanguageCode));
      }
    } catch (e) {
      // Use default (English)
    }
  }

  Future<void> setLanguage(String languageCode) async {
    if (!supportedLanguages.any((lang) => lang.code == languageCode)) {
      return;
    }

    state = state.copyWith(isLoading: true);

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_languageKey, languageCode);

      state = state.copyWith(
        currentLocale: Locale(languageCode),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> toggleLanguage() async {
    final currentCode = state.currentLocale.languageCode;
    final currentIndex = supportedLanguages.indexWhere(
      (lang) => lang.code == currentCode,
    );

    final nextIndex = (currentIndex + 1) % supportedLanguages.length;
    await setLanguage(supportedLanguages[nextIndex].code);
  }
}

// Providers
final languageNotifierProvider = NotifierProvider<LanguageNotifier, LanguageState>(
  LanguageNotifier.new,
);

final currentLocaleProvider = Provider<Locale>((ref) {
  return ref.watch(languageNotifierProvider).currentLocale;
});

final currentLanguageProvider = Provider<Language>((ref) {
  return ref.watch(languageNotifierProvider.select((state) => state.currentLanguage));
});

final isRtlProvider = Provider<bool>((ref) {
  return ref.watch(languageNotifierProvider.select((state) => state.isRtl));
});

// Localizations delegates
final localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

const supportedLocales = [
  Locale('en'),
  Locale('am'),
  Locale('om'),
  Locale('ti'),
  Locale('fr'),
  Locale('ar'),
];

// Extension for easy access to translations
extension LocalizationsExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
