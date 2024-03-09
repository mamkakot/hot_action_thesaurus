import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_round/game_round_model.dart';
import '../../domain/player/player.dart';

part 'game_round_provider.g.dart';

@riverpod
class GameRound extends _$GameRound {
  @override
  Future<GameRoundModel> build(Player player, Player secondPlayer) async {
    return GameRoundModel(
      roundDuration: const Duration(minutes: 1),
      player: player,
      secondPlayer: secondPlayer,
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
