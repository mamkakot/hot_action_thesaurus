import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/app_locale/app_locale_provider.dart';
import '../router/router.dart';

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();

  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final locale = ref.watch(appLocaleProvider);
        return SafeArea(
          child: MaterialApp.router(
            title: 'In a hat!',
            theme: AppThemes.main,
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: locale.value,
          ),
        );
      },
    );
  }
}

class AppThemes {
  static ThemeData main = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    useMaterial3: true,
  );
}
