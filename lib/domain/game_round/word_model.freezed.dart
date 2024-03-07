// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WordModel _$WordModelFromJson(Map<String, dynamic> json) {
  return _WordModel.fromJson(json);
}

/// @nodoc
mixin _$WordModel {
  /// Непосредственно слово, которое загадано.
  String get word => throw _privateConstructorUsedError;

  /// Отметка о том, что слово объяснено.
  bool get isExplained => throw _privateConstructorUsedError;

  /// Время, которое понадобилось на отгадывание слова.
  Duration? get timeToExplain => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Color? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordModelCopyWith<WordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordModelCopyWith<$Res> {
  factory $WordModelCopyWith(WordModel value, $Res Function(WordModel) then) =
      _$WordModelCopyWithImpl<$Res, WordModel>;
  @useResult
  $Res call(
      {String word,
      bool isExplained,
      Duration? timeToExplain,
      @JsonKey(includeToJson: false, includeFromJson: false) Color? color});
}

/// @nodoc
class _$WordModelCopyWithImpl<$Res, $Val extends WordModel>
    implements $WordModelCopyWith<$Res> {
  _$WordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isExplained = null,
    Object? timeToExplain = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isExplained: null == isExplained
          ? _value.isExplained
          : isExplained // ignore: cast_nullable_to_non_nullable
              as bool,
      timeToExplain: freezed == timeToExplain
          ? _value.timeToExplain
          : timeToExplain // ignore: cast_nullable_to_non_nullable
              as Duration?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordModelImplCopyWith<$Res>
    implements $WordModelCopyWith<$Res> {
  factory _$$WordModelImplCopyWith(
          _$WordModelImpl value, $Res Function(_$WordModelImpl) then) =
      __$$WordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      bool isExplained,
      Duration? timeToExplain,
      @JsonKey(includeToJson: false, includeFromJson: false) Color? color});
}

/// @nodoc
class __$$WordModelImplCopyWithImpl<$Res>
    extends _$WordModelCopyWithImpl<$Res, _$WordModelImpl>
    implements _$$WordModelImplCopyWith<$Res> {
  __$$WordModelImplCopyWithImpl(
      _$WordModelImpl _value, $Res Function(_$WordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? isExplained = null,
    Object? timeToExplain = freezed,
    Object? color = freezed,
  }) {
    return _then(_$WordModelImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      isExplained: null == isExplained
          ? _value.isExplained
          : isExplained // ignore: cast_nullable_to_non_nullable
              as bool,
      timeToExplain: freezed == timeToExplain
          ? _value.timeToExplain
          : timeToExplain // ignore: cast_nullable_to_non_nullable
              as Duration?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordModelImpl implements _WordModel {
  const _$WordModelImpl(
      {required this.word,
      required this.isExplained,
      this.timeToExplain,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.color = Colors.green});

  factory _$WordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordModelImplFromJson(json);

  /// Непосредственно слово, которое загадано.
  @override
  final String word;

  /// Отметка о том, что слово объяснено.
  @override
  final bool isExplained;

  /// Время, которое понадобилось на отгадывание слова.
  @override
  final Duration? timeToExplain;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Color? color;

  @override
  String toString() {
    return 'WordModel(word: $word, isExplained: $isExplained, timeToExplain: $timeToExplain, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordModelImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.isExplained, isExplained) ||
                other.isExplained == isExplained) &&
            (identical(other.timeToExplain, timeToExplain) ||
                other.timeToExplain == timeToExplain) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, word, isExplained, timeToExplain, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordModelImplCopyWith<_$WordModelImpl> get copyWith =>
      __$$WordModelImplCopyWithImpl<_$WordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordModelImplToJson(
      this,
    );
  }
}

abstract class _WordModel implements WordModel {
  const factory _WordModel(
      {required final String word,
      required final bool isExplained,
      final Duration? timeToExplain,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Color? color}) = _$WordModelImpl;

  factory _WordModel.fromJson(Map<String, dynamic> json) =
      _$WordModelImpl.fromJson;

  @override

  /// Непосредственно слово, которое загадано.
  String get word;
  @override

  /// Отметка о том, что слово объяснено.
  bool get isExplained;
  @override

  /// Время, которое понадобилось на отгадывание слова.
  Duration? get timeToExplain;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Color? get color;
  @override
  @JsonKey(ignore: true)
  _$$WordModelImplCopyWith<_$WordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
