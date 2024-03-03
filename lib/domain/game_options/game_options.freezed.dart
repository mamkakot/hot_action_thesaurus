// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameOptions _$GameOptionsFromJson(Map<String, dynamic> json) {
  return _GameOptions.fromJson(json);
}

/// @nodoc
mixin _$GameOptions {
  /// Количество игроков
  int get playerCount => throw _privateConstructorUsedError;

  /// Количество слов на одного игрока.
  int get wordsPerPlayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameOptionsCopyWith<GameOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOptionsCopyWith<$Res> {
  factory $GameOptionsCopyWith(
          GameOptions value, $Res Function(GameOptions) then) =
      _$GameOptionsCopyWithImpl<$Res, GameOptions>;
  @useResult
  $Res call({int playerCount, int wordsPerPlayer});
}

/// @nodoc
class _$GameOptionsCopyWithImpl<$Res, $Val extends GameOptions>
    implements $GameOptionsCopyWith<$Res> {
  _$GameOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerCount = null,
    Object? wordsPerPlayer = null,
  }) {
    return _then(_value.copyWith(
      playerCount: null == playerCount
          ? _value.playerCount
          : playerCount // ignore: cast_nullable_to_non_nullable
              as int,
      wordsPerPlayer: null == wordsPerPlayer
          ? _value.wordsPerPlayer
          : wordsPerPlayer // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameOptionsImplCopyWith<$Res>
    implements $GameOptionsCopyWith<$Res> {
  factory _$$GameOptionsImplCopyWith(
          _$GameOptionsImpl value, $Res Function(_$GameOptionsImpl) then) =
      __$$GameOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int playerCount, int wordsPerPlayer});
}

/// @nodoc
class __$$GameOptionsImplCopyWithImpl<$Res>
    extends _$GameOptionsCopyWithImpl<$Res, _$GameOptionsImpl>
    implements _$$GameOptionsImplCopyWith<$Res> {
  __$$GameOptionsImplCopyWithImpl(
      _$GameOptionsImpl _value, $Res Function(_$GameOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerCount = null,
    Object? wordsPerPlayer = null,
  }) {
    return _then(_$GameOptionsImpl(
      playerCount: null == playerCount
          ? _value.playerCount
          : playerCount // ignore: cast_nullable_to_non_nullable
              as int,
      wordsPerPlayer: null == wordsPerPlayer
          ? _value.wordsPerPlayer
          : wordsPerPlayer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GameOptionsImpl extends _GameOptions {
  const _$GameOptionsImpl(
      {required this.playerCount, required this.wordsPerPlayer})
      : super._();

  factory _$GameOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameOptionsImplFromJson(json);

  /// Количество игроков
  @override
  final int playerCount;

  /// Количество слов на одного игрока.
  @override
  final int wordsPerPlayer;

  @override
  String toString() {
    return 'GameOptions(playerCount: $playerCount, wordsPerPlayer: $wordsPerPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOptionsImpl &&
            (identical(other.playerCount, playerCount) ||
                other.playerCount == playerCount) &&
            (identical(other.wordsPerPlayer, wordsPerPlayer) ||
                other.wordsPerPlayer == wordsPerPlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playerCount, wordsPerPlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOptionsImplCopyWith<_$GameOptionsImpl> get copyWith =>
      __$$GameOptionsImplCopyWithImpl<_$GameOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameOptionsImplToJson(
      this,
    );
  }
}

abstract class _GameOptions extends GameOptions {
  const factory _GameOptions(
      {required final int playerCount,
      required final int wordsPerPlayer}) = _$GameOptionsImpl;
  const _GameOptions._() : super._();

  factory _GameOptions.fromJson(Map<String, dynamic> json) =
      _$GameOptionsImpl.fromJson;

  @override

  /// Количество игроков
  int get playerCount;
  @override

  /// Количество слов на одного игрока.
  int get wordsPerPlayer;
  @override
  @JsonKey(ignore: true)
  _$$GameOptionsImplCopyWith<_$GameOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
