import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/features/language/presentation/providers/language_provider.dart';
import 'package:ethio_omni_app/generated/app_localizations.dart';

class LanguageSelectionScreen extends ConsumerWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(currentLanguageProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.selectLanguage),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: supportedLanguages.length,
        itemBuilder: (context, index) {
          final language = supportedLanguages[index];
          final isSelected = language.code == currentLanguage.code;

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: isSelected ? 2 : 0,
            color: isSelected
                ? Theme.of(context).colorScheme.primaryContainer
                : null,
            child: ListTile(
              onTap: () => _selectLanguage(ref, language.code),
              leading: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    language.code.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              title: Text(
                language.nativeName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(language.name),
              trailing: isSelected
                  ? Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : null,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          );
        },
      ),
    );
  }

  void _selectLanguage(WidgetRef ref, String languageCode) {
    ref.read(languageNotifierProvider.notifier).setLanguage(languageCode);
    Navigator.pop(ref.context);
  }
}

// Language Button for AppBar
class LanguageSelectorButton extends ConsumerWidget {
  const LanguageSelectorButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(currentLanguageProvider);

    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const _LanguageBottomSheet(),
        );
      },
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentLanguage.code.toUpperCase(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(Icons.language, size: 20),
        ],
      ),
      tooltip: 'Change Language',
    );
  }
}

class _LanguageBottomSheet extends ConsumerWidget {
  const _LanguageBottomSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLanguage = ref.watch(currentLanguageProvider);
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.selectLanguage,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(height: 24),
          ...supportedLanguages.map((language) {
            final isSelected = language.code == currentLanguage.code;

            return ListTile(
              onTap: () {
                ref.read(languageNotifierProvider.notifier).setLanguage(language.code);
                Navigator.pop(context);
              },
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.primary.withOpacity(0.1),
                ),
                child: Center(
                  child: Text(
                    language.code.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSelected
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
              title: Text(language.nativeName),
              subtitle: Text(language.name),
              trailing: isSelected
                  ? Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : null,
            );
          }).toList(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

// RTL Support Widget
class RtlAwareWidget extends ConsumerWidget {
  final Widget child;

  const RtlAwareWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRtl = ref.watch(isRtlProvider);

    return Directionality(
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
      child: child,
    );
  }
}
