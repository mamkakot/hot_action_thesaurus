// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameOptionsModelImpl _$$GameOptionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameOptionsModelImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      wordsPerPlayer: json['words_per_player'] as int,
      roundDuration: Duration(microseconds: json['round_duration'] as int),
    );

Map<String, dynamic> _$$GameOptionsModelImplToJson(
        _$GameOptionsModelImpl instance) =>
    <String, dynamic>{
      'players': instance.players,
      'words_per_player': instance.wordsPerPlayer,
      'round_duration': instance.roundDuration.inMicroseconds,
    };
