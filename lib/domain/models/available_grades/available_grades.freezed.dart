// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_grades.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvailableGrades _$AvailableGradesFromJson(Map<String, dynamic> json) {
  return _AvailableGrades.fromJson(json);
}

/// @nodoc
mixin _$AvailableGrades {
  int get index => throw _privateConstructorUsedError;
  int get title => throw _privateConstructorUsedError;

  /// Serializes this AvailableGrades to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableGrades
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableGradesCopyWith<AvailableGrades> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableGradesCopyWith<$Res> {
  factory $AvailableGradesCopyWith(
          AvailableGrades value, $Res Function(AvailableGrades) then) =
      _$AvailableGradesCopyWithImpl<$Res, AvailableGrades>;
  @useResult
  $Res call({int index, int title});
}

/// @nodoc
class _$AvailableGradesCopyWithImpl<$Res, $Val extends AvailableGrades>
    implements $AvailableGradesCopyWith<$Res> {
  _$AvailableGradesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableGrades
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableGradesImplCopyWith<$Res>
    implements $AvailableGradesCopyWith<$Res> {
  factory _$$AvailableGradesImplCopyWith(_$AvailableGradesImpl value,
          $Res Function(_$AvailableGradesImpl) then) =
      __$$AvailableGradesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, int title});
}

/// @nodoc
class __$$AvailableGradesImplCopyWithImpl<$Res>
    extends _$AvailableGradesCopyWithImpl<$Res, _$AvailableGradesImpl>
    implements _$$AvailableGradesImplCopyWith<$Res> {
  __$$AvailableGradesImplCopyWithImpl(
      _$AvailableGradesImpl _value, $Res Function(_$AvailableGradesImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvailableGrades
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? title = null,
  }) {
    return _then(_$AvailableGradesImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableGradesImpl implements _AvailableGrades {
  _$AvailableGradesImpl({required this.index, required this.title});

  factory _$AvailableGradesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableGradesImplFromJson(json);

  @override
  final int index;
  @override
  final int title;

  @override
  String toString() {
    return 'AvailableGrades(index: $index, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableGradesImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, title);

  /// Create a copy of AvailableGrades
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableGradesImplCopyWith<_$AvailableGradesImpl> get copyWith =>
      __$$AvailableGradesImplCopyWithImpl<_$AvailableGradesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableGradesImplToJson(
      this,
    );
  }
}

abstract class _AvailableGrades implements AvailableGrades {
  factory _AvailableGrades(
      {required final int index,
      required final int title}) = _$AvailableGradesImpl;

  factory _AvailableGrades.fromJson(Map<String, dynamic> json) =
      _$AvailableGradesImpl.fromJson;

  @override
  int get index;
  @override
  int get title;

  /// Create a copy of AvailableGrades
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableGradesImplCopyWith<_$AvailableGradesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
