import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_options/game_options.dart';

part 'game_options_page_provider.g.dart';

@riverpod
class GameOptionsPage extends _$GameOptionsPage {
  @override
  Future<GameOptions> build() async {
    return GameOptions.defaultOptions();
  }

  Future<void> updateOptions(GameOptions newOptions) async {
    state = AsyncData(newOptions);
  }
}
