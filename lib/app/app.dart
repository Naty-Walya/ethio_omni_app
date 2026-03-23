import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ethio_omni_app/app/router.dart';
import 'package:ethio_omni_app/app/themes.dart';

class EthioOmniApp extends ConsumerWidget {
  const EthioOmniApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Ethio-Omni',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      localizationsDelegates: const [
        // Add localization delegates here
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('am'), // Amharic
        Locale('om'), // Oromo
        Locale('ti'), // Tigrinya
      ],
    );
  }
}
