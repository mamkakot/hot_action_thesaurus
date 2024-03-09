import 'package:freezed_annotation/freezed_annotation.dart';

import '../game_round/word_model.dart';

part 'game_model.freezed.dart';

part 'game_model.g.dart';

@freezed
class GameModel with _$GameModel {
  const factory GameModel({
    /// Слова, которые загаданы в раунде.
    required List<WordModel> words,

    /// Количество слов, которые пользователь смог успешно объяснить.
    @Default(0) int explainedWordsCount,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
