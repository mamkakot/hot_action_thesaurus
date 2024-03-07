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
  /// Слова, которые загаданы в раунде.
  List<WordModel> get words => throw _privateConstructorUsedError;

  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount => throw _privateConstructorUsedError;

  /// Длительность раунда.
  Duration get roundDuration => throw _privateConstructorUsedError;

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
      {List<WordModel> words, int explainedWordsCount, Duration roundDuration});
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
    Object? words = null,
    Object? explainedWordsCount = null,
    Object? roundDuration = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      explainedWordsCount: null == explainedWordsCount
          ? _value.explainedWordsCount
          : explainedWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
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
      {List<WordModel> words, int explainedWordsCount, Duration roundDuration});
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
    Object? words = null,
    Object? explainedWordsCount = null,
    Object? roundDuration = null,
  }) {
    return _then(_$GameRoundModelImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      explainedWordsCount: null == explainedWordsCount
          ? _value.explainedWordsCount
          : explainedWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
      roundDuration: null == roundDuration
          ? _value.roundDuration
          : roundDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameRoundModelImpl implements _GameRoundModel {
  const _$GameRoundModelImpl(
      {required final List<WordModel> words,
      required this.explainedWordsCount,
      required this.roundDuration})
      : _words = words;

  factory _$GameRoundModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameRoundModelImplFromJson(json);

  /// Слова, которые загаданы в раунде.
  final List<WordModel> _words;

  /// Слова, которые загаданы в раунде.
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  /// Количество слов, которые пользователь смог успешно объяснить.
  @override
  final int explainedWordsCount;

  /// Длительность раунда.
  @override
  final Duration roundDuration;

  @override
  String toString() {
    return 'GameRoundModel(words: $words, explainedWordsCount: $explainedWordsCount, roundDuration: $roundDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameRoundModelImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.explainedWordsCount, explainedWordsCount) ||
                other.explainedWordsCount == explainedWordsCount) &&
            (identical(other.roundDuration, roundDuration) ||
                other.roundDuration == roundDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_words),
      explainedWordsCount,
      roundDuration);

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
      {required final List<WordModel> words,
      required final int explainedWordsCount,
      required final Duration roundDuration}) = _$GameRoundModelImpl;

  factory _GameRoundModel.fromJson(Map<String, dynamic> json) =
      _$GameRoundModelImpl.fromJson;

  @override

  /// Слова, которые загаданы в раунде.
  List<WordModel> get words;
  @override

  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount;
  @override

  /// Длительность раунда.
  Duration get roundDuration;
  @override
  @JsonKey(ignore: true)
  _$$GameRoundModelImplCopyWith<_$GameRoundModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
