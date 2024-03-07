import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/game_round/game_round_model.dart';

part 'game_round_provider.g.dart';

@riverpod
class GameRoundPage extends _$GameRoundPage {
  @override
  Future<GameRoundModel> build() async {
    return GameRoundModel.newRound(const Duration(minutes: 1));
  }

  Future<void> incrementExplainedWordsCount() async {
    state = AsyncData(
      state.value!
          .copyWith(explainedWordsCount: state.value!.explainedWordsCount + 1),
    );
  }

  Future<void> decrementExplainedWordsCount() async {
    state = AsyncData(
      state.value!
          .copyWith(explainedWordsCount: state.value!.explainedWordsCount - 1),
    );
  }
}
