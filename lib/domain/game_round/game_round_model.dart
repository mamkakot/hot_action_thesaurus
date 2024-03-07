import 'package:freezed_annotation/freezed_annotation.dart';

import 'word_model.dart';

part 'game_round_model.freezed.dart';

part 'game_round_model.g.dart';

@freezed
/// Модель, которая описывает состояние одного раунда игры.
class GameRoundModel with _$GameRoundModel {
  const factory GameRoundModel({
    /// Слова, которые загаданы в раунде.
    required List<WordModel> words,

    /// Количество слов, которые пользователь смог успешно объяснить.
    required int explainedWordsCount,

    /// Длительность раунда.
    required Duration roundDuration,
  }) = _GameRoundModel;

  factory GameRoundModel.fromJson(Map<String, dynamic> json) =>
      _$GameRoundModelFromJson(json);

  factory GameRoundModel.newRound(Duration roundDuration) => GameRoundModel(
        words: [WordModel.newWord(), WordModel.newWord(), WordModel.newWord()],
        explainedWordsCount: 0,
        roundDuration: roundDuration,
      );
}
