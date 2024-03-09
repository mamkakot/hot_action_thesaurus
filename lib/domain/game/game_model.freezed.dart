// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  /// Слова, которые загаданы в раунде.
  List<WordModel> get words => throw _privateConstructorUsedError;

  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call({List<WordModel> words, int explainedWordsCount});
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? explainedWordsCount = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameModelImplCopyWith<$Res>
    implements $GameModelCopyWith<$Res> {
  factory _$$GameModelImplCopyWith(
          _$GameModelImpl value, $Res Function(_$GameModelImpl) then) =
      __$$GameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WordModel> words, int explainedWordsCount});
}

/// @nodoc
class __$$GameModelImplCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$GameModelImpl>
    implements _$$GameModelImplCopyWith<$Res> {
  __$$GameModelImplCopyWithImpl(
      _$GameModelImpl _value, $Res Function(_$GameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? explainedWordsCount = null,
  }) {
    return _then(_$GameModelImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      explainedWordsCount: null == explainedWordsCount
          ? _value.explainedWordsCount
          : explainedWordsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameModelImpl implements _GameModel {
  const _$GameModelImpl(
      {required final List<WordModel> words, this.explainedWordsCount = 0})
      : _words = words;

  factory _$GameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameModelImplFromJson(json);

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
  @JsonKey()
  final int explainedWordsCount;

  @override
  String toString() {
    return 'GameModel(words: $words, explainedWordsCount: $explainedWordsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModelImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.explainedWordsCount, explainedWordsCount) ||
                other.explainedWordsCount == explainedWordsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_words), explainedWordsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      __$$GameModelImplCopyWithImpl<_$GameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameModelImplToJson(
      this,
    );
  }
}

abstract class _GameModel implements GameModel {
  const factory _GameModel(
      {required final List<WordModel> words,
      final int explainedWordsCount}) = _$GameModelImpl;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$GameModelImpl.fromJson;

  @override

  /// Слова, которые загаданы в раунде.
  List<WordModel> get words;
  @override

  /// Количество слов, которые пользователь смог успешно объяснить.
  int get explainedWordsCount;
  @override
  @JsonKey(ignore: true)
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
