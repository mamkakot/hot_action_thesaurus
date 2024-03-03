import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_locale_provider.g.dart';

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Future<Locale> build() async {
    return const Locale('ru');
  }

  Future<void> updateLocale(Locale newLocale) async {
    state = AsyncData(newLocale);
  }
}
