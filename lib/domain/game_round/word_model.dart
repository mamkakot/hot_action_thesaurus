import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_model.freezed.dart';

part 'word_model.g.dart';

/// Модель, которая описывает загаданное в игре слово.
@freezed
class WordModel with _$WordModel {
  const factory WordModel({
    /// Непосредственно слово, которое загадано.
    required String word,

    /// Отметка о том, что слово объяснено.
    required bool isExplained,

    /// Время, которое понадобилось на отгадывание слова.
    Duration? timeToExplain,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(Colors.green)
    Color? color,
  }) = _WordModel;

  factory WordModel.fromJson(Map<String, dynamic> json) =>
      _$WordModelFromJson(json);

  factory WordModel.newWord({required String word}) => WordModel(
        word: word,
        isExplained: false,
        timeToExplain: null,
        color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0),
      );
}
