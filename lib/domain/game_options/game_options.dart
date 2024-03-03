import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_options.freezed.dart';

part 'game_options.g.dart';

/// Модель, которая задаёт опции, которые пользователь задаёт перед началом игры.
@freezed
class GameOptions with _$GameOptions {
  const GameOptions._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GameOptions({
    /// Количество игроков
    required int playerCount,

    /// Количество слов на одного игрока.
    required int wordsPerPlayer,
  }) = _GameOptions;

  factory GameOptions.defaultOptions() => const GameOptions(
        playerCount: 15,
        wordsPerPlayer: 30,
      );

  factory GameOptions.fromJson(Map<String, dynamic> json) =>
      _$GameOptionsFromJson(json);

  /// Итоговое количество слов "в шляпе".
  int get wordCount => playerCount * wordsPerPlayer;

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
