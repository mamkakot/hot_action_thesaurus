import 'package:freezed_annotation/freezed_annotation.dart';

part 'options.freezed.dart';

part 'options.g.dart';

@freezed
class Options with _$Options {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Options({
    required int playerCount,
    required int wordsPerPlayer,
  }) = _Options;

  factory Options.defaultOptions() => const Options(
        playerCount: 4,
        wordsPerPlayer: 30,
      );

  factory Options.fromJson(Map<String, dynamic> json) =>
      _$OptionsFromJson(json);
}
