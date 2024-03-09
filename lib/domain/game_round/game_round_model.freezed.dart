// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_round_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameRoundModel _$GameRoundModelFromJson(Map<String, dynamic> json) {
  return _GameRoundModel.fromJson(json);
}

/// @nodoc
mixin _$GameRoundModel {
  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount => throw _privateConstructorUsedError;

  /// Длительность раунда.
  Duration get roundDuration => throw _privateConstructorUsedError;

  /// Игрок, который объясняет слова.
  Player get player => throw _privateConstructorUsedError;

  /// Игрок, которому объясняют слова.
  Player get secondPlayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameRoundModelCopyWith<GameRoundModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoundModelCopyWith<$Res> {
  factory $GameRoundModelCopyWith(
          GameRoundModel value, $Res Function(GameRoundModel) then) =
      _$GameRoundModelCopyWithImpl<$Res, GameRoundModel>;
  @useResult
  $Res call(
      {int explainedWordsCount,
      Duration roundDuration,
      Player player,
      Player secondPlayer});

  $PlayerCopyWith<$Res> get player;
  $PlayerCopyWith<$Res> get secondPlayer;
}

/// @nodoc
class _$GameRoundModelCopyWithImpl<$Res, $Val extends GameRoundModel>
    implements $GameRoundModelCopyWith<$Res> {
  _$GameRoundModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explainedWordsCount = null,
    Object? roundDuration = null,
    Object? player = null,
    Object? secondPlayer = null,
  }) {
    return _then(_value.copyWith(
      explainedWordsCount: null == explainedWordsCount
          ? _value.explainedWordsCount
          : explainedWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      secondPlayer: null == secondPlayer
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get player {
    return $PlayerCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res> get secondPlayer {
    return $PlayerCopyWith<$Res>(_value.secondPlayer, (value) {
      return _then(_value.copyWith(secondPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameRoundModelImplCopyWith<$Res>
    implements $GameRoundModelCopyWith<$Res> {
  factory _$$GameRoundModelImplCopyWith(_$GameRoundModelImpl value,
          $Res Function(_$GameRoundModelImpl) then) =
      __$$GameRoundModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int explainedWordsCount,
      Duration roundDuration,
      Player player,
      Player secondPlayer});

  @override
  $PlayerCopyWith<$Res> get player;
  @override
  $PlayerCopyWith<$Res> get secondPlayer;
}

/// @nodoc
class __$$GameRoundModelImplCopyWithImpl<$Res>
    extends _$GameRoundModelCopyWithImpl<$Res, _$GameRoundModelImpl>
    implements _$$GameRoundModelImplCopyWith<$Res> {
  __$$GameRoundModelImplCopyWithImpl(
      _$GameRoundModelImpl _value, $Res Function(_$GameRoundModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explainedWordsCount = null,
    Object? roundDuration = null,
    Object? player = null,
    Object? secondPlayer = null,
  }) {
    return _then(_$GameRoundModelImpl(
      explainedWordsCount: null == explainedWordsCount
          ? _value.explainedWordsCount
          : explainedWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player,
      secondPlayer: null == secondPlayer
          ? _value.secondPlayer
          : secondPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameRoundModelImpl implements _GameRoundModel {
  const _$GameRoundModelImpl(
      {this.explainedWordsCount = 0,
      required this.roundDuration,
      required this.player,
      required this.secondPlayer});

  factory _$GameRoundModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameRoundModelImplFromJson(json);

  /// Количество слов, которые пользователь смог успешно объяснить.
  @override
  @JsonKey()
  final int explainedWordsCount;

  /// Длительность раунда.
  @override
  final Duration roundDuration;

  /// Игрок, который объясняет слова.
  @override
  final Player player;

  /// Игрок, которому объясняют слова.
  @override
  final Player secondPlayer;

  @override
  String toString() {
    return 'GameRoundModel(explainedWordsCount: $explainedWordsCount, roundDuration: $roundDuration, player: $player, secondPlayer: $secondPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoundModelImpl &&
            (identical(other.explainedWordsCount, explainedWordsCount) ||
                other.explainedWordsCount == explainedWordsCount) &&
            (identical(other.roundDuration, roundDuration) ||
                other.roundDuration == roundDuration) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.secondPlayer, secondPlayer) ||
                other.secondPlayer == secondPlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, explainedWordsCount, roundDuration, player, secondPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameRoundModelImplCopyWith<_$GameRoundModelImpl> get copyWith =>
      __$$GameRoundModelImplCopyWithImpl<_$GameRoundModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameRoundModelImplToJson(
      this,
    );
  }
}

abstract class _GameRoundModel implements GameRoundModel {
  const factory _GameRoundModel(
      {final int explainedWordsCount,
      required final Duration roundDuration,
      required final Player player,
      required final Player secondPlayer}) = _$GameRoundModelImpl;

  factory _GameRoundModel.fromJson(Map<String, dynamic> json) =
      _$GameRoundModelImpl.fromJson;

  @override

  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount;
  @override

  /// Длительность раунда.
  Duration get roundDuration;
  @override

  /// Игрок, который объясняет слова.
  Player get player;
  @override

  /// Игрок, которому объясняют слова.
  Player get secondPlayer;
  @override
  @JsonKey(ignore: true)
  _$$GameRoundModelImplCopyWith<_$GameRoundModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
