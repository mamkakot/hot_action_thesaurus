// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameOptionsModelImpl _$$GameOptionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameOptionsModelImpl(
      playerCount: json['player_count'] as int,
      wordsPerPlayer: json['words_per_player'] as int,
      roundDuration: Duration(microseconds: json['round_duration'] as int),
    );

Map<String, dynamic> _$$GameOptionsModelImplToJson(
        _$GameOptionsModelImpl instance) =>
    <String, dynamic>{
      'player_count': instance.playerCount,
      'words_per_player': instance.wordsPerPlayer,
      'round_duration': instance.roundDuration.inMicroseconds,
    };
