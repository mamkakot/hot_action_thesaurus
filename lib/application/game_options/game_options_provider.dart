import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_options/game_options_model.dart';
import '../../domain/player/player.dart';

part 'game_options_provider.g.dart';

@riverpod
class GameOptions extends _$GameOptions {
  @override
  Future<GameOptionsModel> build() async {
    return GameOptionsModel.defaultOptions();
  }

  Future<void> updateOptions(GameOptionsModel newOptions) async {
    state = AsyncData(newOptions);
  }

  Future<void> addPlayer() async {
    final previousState = await future;
    state = AsyncData(
      previousState.copyWith(
        players: [...previousState.players, const Player()],
      ),
    );
  }

  Future<void> removePlayer() async {
    final previousState = await future;
    state = AsyncData(
      previousState.copyWith(
        players: [...previousState.players, const Player()],
      ),
    );
  }
}
