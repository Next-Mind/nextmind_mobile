// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'availability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Availability.fromJson(json);
    case 'empty':
      return EmptyAvailability.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Availability',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Availability {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String date, int status) $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String date, int status)? $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String date, int status)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Availability value) $default, {
    required TResult Function(EmptyAvailability value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Availability value)? $default, {
    TResult? Function(EmptyAvailability value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Availability value)? $default, {
    TResult Function(EmptyAvailability value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Availability to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res, Availability>;
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res, $Val extends Availability>
    implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AvailabilityImplCopyWith<$Res> {
  factory _$$AvailabilityImplCopyWith(
          _$AvailabilityImpl value, $Res Function(_$AvailabilityImpl) then) =
      __$$AvailabilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String date, int status});
}

/// @nodoc
class __$$AvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$AvailabilityImpl>
    implements _$$AvailabilityImplCopyWith<$Res> {
  __$$AvailabilityImplCopyWithImpl(
      _$AvailabilityImpl _value, $Res Function(_$AvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? status = null,
  }) {
    return _then(_$AvailabilityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityImpl implements _Availability {
  _$AvailabilityImpl(
      {required this.id,
      required this.date,
      required this.status,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$AvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityImplFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final int status;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Availability(id: $id, date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, status);

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      __$$AvailabilityImplCopyWithImpl<_$AvailabilityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String date, int status) $default, {
    required TResult Function() empty,
  }) {
    return $default(id, date, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String date, int status)? $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(id, date, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String date, int status)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, date, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Availability value) $default, {
    required TResult Function(EmptyAvailability value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Availability value)? $default, {
    TResult? Function(EmptyAvailability value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Availability value)? $default, {
    TResult Function(EmptyAvailability value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityImplToJson(
      this,
    );
  }
}

abstract class _Availability implements Availability {
  factory _Availability(
      {required final int id,
      required final String date,
      required final int status}) = _$AvailabilityImpl;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$AvailabilityImpl.fromJson;

  int get id;
  String get date;
  int get status;

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailabilityImplCopyWith<_$AvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyAvailabilityImplCopyWith<$Res> {
  factory _$$EmptyAvailabilityImplCopyWith(_$EmptyAvailabilityImpl value,
          $Res Function(_$EmptyAvailabilityImpl) then) =
      __$$EmptyAvailabilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyAvailabilityImplCopyWithImpl<$Res>
    extends _$AvailabilityCopyWithImpl<$Res, _$EmptyAvailabilityImpl>
    implements _$$EmptyAvailabilityImplCopyWith<$Res> {
  __$$EmptyAvailabilityImplCopyWithImpl(_$EmptyAvailabilityImpl _value,
      $Res Function(_$EmptyAvailabilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Availability
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EmptyAvailabilityImpl implements EmptyAvailability {
  _$EmptyAvailabilityImpl({final String? $type}) : $type = $type ?? 'empty';

  factory _$EmptyAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyAvailabilityImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Availability.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyAvailabilityImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String date, int status) $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String date, int status)? $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String date, int status)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Availability value) $default, {
    required TResult Function(EmptyAvailability value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Availability value)? $default, {
    TResult? Function(EmptyAvailability value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Availability value)? $default, {
    TResult Function(EmptyAvailability value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyAvailabilityImplToJson(
      this,
    );
  }
}

abstract class EmptyAvailability implements Availability {
  factory EmptyAvailability() = _$EmptyAvailabilityImpl;

  factory EmptyAvailability.fromJson(Map<String, dynamic> json) =
      _$EmptyAvailabilityImpl.fromJson;
}
