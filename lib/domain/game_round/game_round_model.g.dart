// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_round_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameRoundModelImpl _$$GameRoundModelImplFromJson(Map<String, dynamic> json) =>
    _$GameRoundModelImpl(
      explainedWordsCount: json['explainedWordsCount'] as int? ?? 0,
      roundDuration: Duration(microseconds: json['roundDuration'] as int),
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      secondPlayer:
          Player.fromJson(json['secondPlayer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameRoundModelImplToJson(
        _$GameRoundModelImpl instance) =>
    <String, dynamic>{
      'explainedWordsCount': instance.explainedWordsCount,
      'roundDuration': instance.roundDuration.inMicroseconds,
      'player': instance.player,
      'secondPlayer': instance.secondPlayer,
    };
