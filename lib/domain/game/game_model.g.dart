// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameModelImpl _$$GameModelImplFromJson(Map<String, dynamic> json) =>
    _$GameModelImpl(
      words: (json['words'] as List<dynamic>)
          .map((e) => WordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      explainedWordsCount: json['explainedWordsCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
      'explainedWordsCount': instance.explainedWordsCount,
    };
