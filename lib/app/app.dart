import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ethio_omni_app/generated/app_localizations.dart';
import 'package:ethio_omni_app/app/router.dart';
import 'package:ethio_omni_app/app/themes.dart';
import 'package:ethio_omni_app/features/language/presentation/providers/language_provider.dart';

class EthioOmniApp extends ConsumerWidget {
  const EthioOmniApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(currentLocaleProvider);
    final isRtl = ref.watch(isRtlProvider);

    return MaterialApp.router(
      title: 'Ethio-Omni',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('am'), // Amharic
        Locale('om'), // Oromo
        Locale('ti'), // Tigrinya
        Locale('fr'), // French
        Locale('ar'), // Arabic
      ],
      builder: (context, child) {
        return Directionality(
          textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
          child: child!,
        );
      },
    );
  }
}
