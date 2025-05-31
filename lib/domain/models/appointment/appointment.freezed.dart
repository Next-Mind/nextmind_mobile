// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  int get id => throw _privateConstructorUsedError;
  int get availabilityId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get resolution => throw _privateConstructorUsedError;
  String get notesPrivate => throw _privateConstructorUsedError;
  String get attachmentPath => throw _privateConstructorUsedError;
  String get sessionLink => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get cancelledBy => throw _privateConstructorUsedError;
  String get cancelReason => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  bool get reminderSent => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {int id,
      int availabilityId,
      int userId,
      String description,
      String resolution,
      String notesPrivate,
      String attachmentPath,
      String sessionLink,
      String status,
      String cancelledBy,
      String cancelReason,
      int durationMinutes,
      int rating,
      bool reminderSent,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? availabilityId = null,
    Object? userId = null,
    Object? description = null,
    Object? resolution = null,
    Object? notesPrivate = null,
    Object? attachmentPath = null,
    Object? sessionLink = null,
    Object? status = null,
    Object? cancelledBy = null,
    Object? cancelReason = null,
    Object? durationMinutes = null,
    Object? rating = null,
    Object? reminderSent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      availabilityId: null == availabilityId
          ? _value.availabilityId
          : availabilityId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      notesPrivate: null == notesPrivate
          ? _value.notesPrivate
          : notesPrivate // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentPath: null == attachmentPath
          ? _value.attachmentPath
          : attachmentPath // ignore: cast_nullable_to_non_nullable
              as String,
      sessionLink: null == sessionLink
          ? _value.sessionLink
          : sessionLink // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cancelledBy: null == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reminderSent: null == reminderSent
          ? _value.reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int availabilityId,
      int userId,
      String description,
      String resolution,
      String notesPrivate,
      String attachmentPath,
      String sessionLink,
      String status,
      String cancelledBy,
      String cancelReason,
      int durationMinutes,
      int rating,
      bool reminderSent,
      String createdAt,
      String updatedAt});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? availabilityId = null,
    Object? userId = null,
    Object? description = null,
    Object? resolution = null,
    Object? notesPrivate = null,
    Object? attachmentPath = null,
    Object? sessionLink = null,
    Object? status = null,
    Object? cancelledBy = null,
    Object? cancelReason = null,
    Object? durationMinutes = null,
    Object? rating = null,
    Object? reminderSent = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AppointmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      availabilityId: null == availabilityId
          ? _value.availabilityId
          : availabilityId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      notesPrivate: null == notesPrivate
          ? _value.notesPrivate
          : notesPrivate // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentPath: null == attachmentPath
          ? _value.attachmentPath
          : attachmentPath // ignore: cast_nullable_to_non_nullable
              as String,
      sessionLink: null == sessionLink
          ? _value.sessionLink
          : sessionLink // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      cancelledBy: null == cancelledBy
          ? _value.cancelledBy
          : cancelledBy // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReason: null == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      reminderSent: null == reminderSent
          ? _value.reminderSent
          : reminderSent // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl implements _Appointment {
  _$AppointmentImpl(
      {required this.id,
      required this.availabilityId,
      required this.userId,
      required this.description,
      required this.resolution,
      required this.notesPrivate,
      required this.attachmentPath,
      required this.sessionLink,
      required this.status,
      required this.cancelledBy,
      required this.cancelReason,
      required this.durationMinutes,
      required this.rating,
      required this.reminderSent,
      required this.createdAt,
      required this.updatedAt});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final int id;
  @override
  final int availabilityId;
  @override
  final int userId;
  @override
  final String description;
  @override
  final String resolution;
  @override
  final String notesPrivate;
  @override
  final String attachmentPath;
  @override
  final String sessionLink;
  @override
  final String status;
  @override
  final String cancelledBy;
  @override
  final String cancelReason;
  @override
  final int durationMinutes;
  @override
  final int rating;
  @override
  final bool reminderSent;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'Appointment(id: $id, availabilityId: $availabilityId, userId: $userId, description: $description, resolution: $resolution, notesPrivate: $notesPrivate, attachmentPath: $attachmentPath, sessionLink: $sessionLink, status: $status, cancelledBy: $cancelledBy, cancelReason: $cancelReason, durationMinutes: $durationMinutes, rating: $rating, reminderSent: $reminderSent, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.availabilityId, availabilityId) ||
                other.availabilityId == availabilityId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.notesPrivate, notesPrivate) ||
                other.notesPrivate == notesPrivate) &&
            (identical(other.attachmentPath, attachmentPath) ||
                other.attachmentPath == attachmentPath) &&
            (identical(other.sessionLink, sessionLink) ||
                other.sessionLink == sessionLink) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reminderSent, reminderSent) ||
                other.reminderSent == reminderSent) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      availabilityId,
      userId,
      description,
      resolution,
      notesPrivate,
      attachmentPath,
      sessionLink,
      status,
      cancelledBy,
      cancelReason,
      durationMinutes,
      rating,
      reminderSent,
      createdAt,
      updatedAt);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  factory _Appointment(
      {required final int id,
      required final int availabilityId,
      required final int userId,
      required final String description,
      required final String resolution,
      required final String notesPrivate,
      required final String attachmentPath,
      required final String sessionLink,
      required final String status,
      required final String cancelledBy,
      required final String cancelReason,
      required final int durationMinutes,
      required final int rating,
      required final bool reminderSent,
      required final String createdAt,
      required final String updatedAt}) = _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  int get id;
  @override
  int get availabilityId;
  @override
  int get userId;
  @override
  String get description;
  @override
  String get resolution;
  @override
  String get notesPrivate;
  @override
  String get attachmentPath;
  @override
  String get sessionLink;
  @override
  String get status;
  @override
  String get cancelledBy;
  @override
  String get cancelReason;
  @override
  int get durationMinutes;
  @override
  int get rating;
  @override
  bool get reminderSent;
  @override
  String get createdAt;
  @override
  String get updatedAt;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
