// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameOptionsImpl _$$GameOptionsImplFromJson(Map<String, dynamic> json) =>
    _$GameOptionsImpl(
      playerCount: json['player_count'] as int,
      wordsPerPlayer: json['words_per_player'] as int,
    );

Map<String, dynamic> _$$GameOptionsImplToJson(_$GameOptionsImpl instance) =>
    <String, dynamic>{
      'player_count': instance.playerCount,
      'words_per_player': instance.wordsPerPlayer,
    };
