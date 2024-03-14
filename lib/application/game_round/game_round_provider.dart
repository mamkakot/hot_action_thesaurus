import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_round/game_round_model.dart';
import '../../domain/player/player.dart';

part 'game_round_provider.g.dart';

@riverpod
class GameRound extends _$GameRound {
  @override
  Future<GameRoundModel> build() async {
    return const GameRoundModel(
      roundDuration: Duration(minutes: 1),
      player: Player(),
      secondPlayer: Player(),
    );
  }

  Future<void> incrementExplainedWordsCount() async {
    final previousState = await future;
    state = AsyncData(
      previousState.copyWith(
        explainedWordsCount: previousState.explainedWordsCount + 1,
      ),
    );
  }

  Future<void> decrementExplainedWordsCount() async {
    final previousState = await future;
    state = AsyncData(
      previousState.copyWith(
        explainedWordsCount: previousState.explainedWordsCount - 1,
      ),
    );
  }
}
