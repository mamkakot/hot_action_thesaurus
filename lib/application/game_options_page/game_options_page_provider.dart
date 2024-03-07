import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_options/game_options_model.dart';

part 'game_options_page_provider.g.dart';

@riverpod
class GameOptionsPage extends _$GameOptionsPage {
  @override
  Future<GameOptionsModel> build() async {
    return GameOptionsModel.defaultOptions();
  }

  Future<void> updateOptions(GameOptionsModel newOptions) async {
    state = AsyncData(newOptions);
  }
}
