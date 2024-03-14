import 'package:freezed_annotation/freezed_annotation.dart';

import '../player/player.dart';

part 'game_round_model.freezed.dart';

part 'game_round_model.g.dart';

/// Модель, которая описывает состояние одного раунда игры.
@freezed
class GameRoundModel with _$GameRoundModel {
  const factory GameRoundModel({
    /// Количество слов, которые пользователь смог успешно объяснить.
    @Default(0) int explainedWordsCount,

    /// Длительность раунда.
    required Duration roundDuration,

    /// Игрок, который объясняет слова.
    required Player player,

    /// Игрок, которому объясняют слова.
    required Player secondPlayer,
  }) = _GameRoundModel;

  factory GameRoundModel.fromJson(Map<String, dynamic> json) =>
      _$GameRoundModelFromJson(json);
}
