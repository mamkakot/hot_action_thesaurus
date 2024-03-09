import 'package:freezed_annotation/freezed_annotation.dart';

import '../player/player.dart';

part 'game_options_model.freezed.dart';

part 'game_options_model.g.dart';

/// Модель, которая задаёт опции, которые пользователь задаёт перед началом игры.
@freezed
class GameOptionsModel with _$GameOptionsModel {
  const GameOptionsModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GameOptionsModel({
    /// Количество игроков
    required List<Player> players,

    /// Количество слов на одного игрока.
    required int wordsPerPlayer,

    /// Длительность одного раунда.
    required Duration roundDuration,
  }) = _GameOptionsModel;

  factory GameOptionsModel.defaultOptions() => const GameOptionsModel(
        players: [Player(), Player()],
        wordsPerPlayer: 30,
        roundDuration: Duration(minutes: 1),
      );

  factory GameOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$GameOptionsModelFromJson(json);

  /// Итоговое количество слов "в шляпе".
  int get wordCount => players.length * wordsPerPlayer;

  /// Минимальное количество игроков.
  int get minPlayerCount => 2;

  /// Минимальное количество слов на одного игрока.
  int get minWordsPerPlayer => 10;

  /// Максимальное количество игроков.
  int get maxPlayerCount => 20;

  /// Максимальное количество слов на одного игрока.
  int get maxWordsPerPlayer => 100;

  /// Шаг переменной количества слов на одного игрока.
  int get wordsPerPlayerStep => 10;
}
