// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_options_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameOptionsModel _$GameOptionsModelFromJson(Map<String, dynamic> json) {
  return _GameOptionsModel.fromJson(json);
}

/// @nodoc
mixin _$GameOptionsModel {
  /// Количество игроков
  List<Player> get players => throw _privateConstructorUsedError;

  /// Количество слов на одного игрока.
  int get wordsPerPlayer => throw _privateConstructorUsedError;

  /// Длительность одного раунда.
  Duration get roundDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameOptionsModelCopyWith<GameOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOptionsModelCopyWith<$Res> {
  factory $GameOptionsModelCopyWith(
          GameOptionsModel value, $Res Function(GameOptionsModel) then) =
      _$GameOptionsModelCopyWithImpl<$Res, GameOptionsModel>;
  @useResult
  $Res call({List<Player> players, int wordsPerPlayer, Duration roundDuration});
}

/// @nodoc
class _$GameOptionsModelCopyWithImpl<$Res, $Val extends GameOptionsModel>
    implements $GameOptionsModelCopyWith<$Res> {
  _$GameOptionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? wordsPerPlayer = null,
    Object? roundDuration = null,
  }) {
    return _then(_value.copyWith(
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      wordsPerPlayer: null == wordsPerPlayer
          ? _value.wordsPerPlayer
          : wordsPerPlayer // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameOptionsModelImplCopyWith<$Res>
    implements $GameOptionsModelCopyWith<$Res> {
  factory _$$GameOptionsModelImplCopyWith(_$GameOptionsModelImpl value,
          $Res Function(_$GameOptionsModelImpl) then) =
      __$$GameOptionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player> players, int wordsPerPlayer, Duration roundDuration});
}

/// @nodoc
class __$$GameOptionsModelImplCopyWithImpl<$Res>
    extends _$GameOptionsModelCopyWithImpl<$Res, _$GameOptionsModelImpl>
    implements _$$GameOptionsModelImplCopyWith<$Res> {
  __$$GameOptionsModelImplCopyWithImpl(_$GameOptionsModelImpl _value,
      $Res Function(_$GameOptionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? wordsPerPlayer = null,
    Object? roundDuration = null,
  }) {
    return _then(_$GameOptionsModelImpl(
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      wordsPerPlayer: null == wordsPerPlayer
          ? _value.wordsPerPlayer
          : wordsPerPlayer // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GameOptionsModelImpl extends _GameOptionsModel {
  const _$GameOptionsModelImpl(
      {required final List<Player> players,
      required this.wordsPerPlayer,
      required this.roundDuration})
      : _players = players,
        super._();

  factory _$GameOptionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameOptionsModelImplFromJson(json);

  /// Количество игроков
  final List<Player> _players;

  /// Количество игроков
  @override
  List<Player> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  /// Количество слов на одного игрока.
  @override
  final int wordsPerPlayer;

  /// Длительность одного раунда.
  @override
  final Duration roundDuration;

  @override
  String toString() {
    return 'GameOptionsModel(players: $players, wordsPerPlayer: $wordsPerPlayer, roundDuration: $roundDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOptionsModelImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.wordsPerPlayer, wordsPerPlayer) ||
                other.wordsPerPlayer == wordsPerPlayer) &&
            (identical(other.roundDuration, roundDuration) ||
                other.roundDuration == roundDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_players),
      wordsPerPlayer,
      roundDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOptionsModelImplCopyWith<_$GameOptionsModelImpl> get copyWith =>
      __$$GameOptionsModelImplCopyWithImpl<_$GameOptionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameOptionsModelImplToJson(
      this,
    );
  }
}

abstract class _GameOptionsModel extends GameOptionsModel {
  const factory _GameOptionsModel(
      {required final List<Player> players,
      required final int wordsPerPlayer,
      required final Duration roundDuration}) = _$GameOptionsModelImpl;
  const _GameOptionsModel._() : super._();

  factory _GameOptionsModel.fromJson(Map<String, dynamic> json) =
      _$GameOptionsModelImpl.fromJson;

  @override

  /// Количество игроков
  List<Player> get players;
  @override

  /// Количество слов на одного игрока.
  int get wordsPerPlayer;
  @override

  /// Длительность одного раунда.
  Duration get roundDuration;
  @override
  @JsonKey(ignore: true)
  _$$GameOptionsModelImplCopyWith<_$GameOptionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
