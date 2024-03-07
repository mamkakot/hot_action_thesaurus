// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordModelImpl _$$WordModelImplFromJson(Map<String, dynamic> json) =>
    _$WordModelImpl(
      word: json['word'] as String,
      isExplained: json['isExplained'] as bool,
      timeToExplain: json['timeToExplain'] == null
          ? null
          : Duration(microseconds: json['timeToExplain'] as int),
    );

Map<String, dynamic> _$$WordModelImplToJson(_$WordModelImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'isExplained': instance.isExplained,
      'timeToExplain': instance.timeToExplain?.inMicroseconds,
    };
