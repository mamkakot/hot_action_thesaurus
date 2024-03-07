// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_round_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameRoundModelImpl _$$GameRoundModelImplFromJson(Map<String, dynamic> json) =>
    _$GameRoundModelImpl(
      words: (json['words'] as List<dynamic>)
          .map((e) => WordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      explainedWordsCount: json['explainedWordsCount'] as int,
      roundDuration: Duration(microseconds: json['roundDuration'] as int),
    );

Map<String, dynamic> _$$GameRoundModelImplToJson(
        _$GameRoundModelImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
      'explainedWordsCount': instance.explainedWordsCount,
      'roundDuration': instance.roundDuration.inMicroseconds,
    };
