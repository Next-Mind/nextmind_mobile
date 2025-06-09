// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicBox _$DynamicBoxFromJson(Map<String, dynamic> json) {
  return _DynamicBox.fromJson(json);
}

/// @nodoc
mixin _$DynamicBox {
  String get dynamicBoxTitle => throw _privateConstructorUsedError;
  String get dynamicBoxContent => throw _privateConstructorUsedError;

  /// Serializes this DynamicBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicBoxCopyWith<DynamicBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicBoxCopyWith<$Res> {
  factory $DynamicBoxCopyWith(
          DynamicBox value, $Res Function(DynamicBox) then) =
      _$DynamicBoxCopyWithImpl<$Res, DynamicBox>;
  @useResult
  $Res call({String dynamicBoxTitle, String dynamicBoxContent});
}

/// @nodoc
class _$DynamicBoxCopyWithImpl<$Res, $Val extends DynamicBox>
    implements $DynamicBoxCopyWith<$Res> {
  _$DynamicBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicBoxTitle = null,
    Object? dynamicBoxContent = null,
  }) {
    return _then(_value.copyWith(
      dynamicBoxTitle: null == dynamicBoxTitle
          ? _value.dynamicBoxTitle
          : dynamicBoxTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicBoxContent: null == dynamicBoxContent
          ? _value.dynamicBoxContent
          : dynamicBoxContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicBoxImplCopyWith<$Res>
    implements $DynamicBoxCopyWith<$Res> {
  factory _$$DynamicBoxImplCopyWith(
          _$DynamicBoxImpl value, $Res Function(_$DynamicBoxImpl) then) =
      __$$DynamicBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dynamicBoxTitle, String dynamicBoxContent});
}

/// @nodoc
class __$$DynamicBoxImplCopyWithImpl<$Res>
    extends _$DynamicBoxCopyWithImpl<$Res, _$DynamicBoxImpl>
    implements _$$DynamicBoxImplCopyWith<$Res> {
  __$$DynamicBoxImplCopyWithImpl(
      _$DynamicBoxImpl _value, $Res Function(_$DynamicBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dynamicBoxTitle = null,
    Object? dynamicBoxContent = null,
  }) {
    return _then(_$DynamicBoxImpl(
      dynamicBoxTitle: null == dynamicBoxTitle
          ? _value.dynamicBoxTitle
          : dynamicBoxTitle // ignore: cast_nullable_to_non_nullable
              as String,
      dynamicBoxContent: null == dynamicBoxContent
          ? _value.dynamicBoxContent
          : dynamicBoxContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicBoxImpl implements _DynamicBox {
  const _$DynamicBoxImpl(
      {required this.dynamicBoxTitle, required this.dynamicBoxContent});

  factory _$DynamicBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicBoxImplFromJson(json);

  @override
  final String dynamicBoxTitle;
  @override
  final String dynamicBoxContent;

  @override
  String toString() {
    return 'DynamicBox(dynamicBoxTitle: $dynamicBoxTitle, dynamicBoxContent: $dynamicBoxContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicBoxImpl &&
            (identical(other.dynamicBoxTitle, dynamicBoxTitle) ||
                other.dynamicBoxTitle == dynamicBoxTitle) &&
            (identical(other.dynamicBoxContent, dynamicBoxContent) ||
                other.dynamicBoxContent == dynamicBoxContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dynamicBoxTitle, dynamicBoxContent);

  /// Create a copy of DynamicBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicBoxImplCopyWith<_$DynamicBoxImpl> get copyWith =>
      __$$DynamicBoxImplCopyWithImpl<_$DynamicBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicBoxImplToJson(
      this,
    );
  }
}

abstract class _DynamicBox implements DynamicBox {
  const factory _DynamicBox(
      {required final String dynamicBoxTitle,
      required final String dynamicBoxContent}) = _$DynamicBoxImpl;

  factory _DynamicBox.fromJson(Map<String, dynamic> json) =
      _$DynamicBoxImpl.fromJson;

  @override
  String get dynamicBoxTitle;
  @override
  String get dynamicBoxContent;

  /// Create a copy of DynamicBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicBoxImplCopyWith<_$DynamicBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
