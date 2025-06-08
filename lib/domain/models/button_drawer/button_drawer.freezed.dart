// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_drawer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ButtonDrawer _$ButtonDrawerFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ButtonDrawer.fromJson(json);
    case 'empty':
      return ButtonDrawerEmpty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ButtonDrawer',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ButtonDrawer {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ButtonDrawer value) $default, {
    required TResult Function(ButtonDrawerEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ButtonDrawer value)? $default, {
    TResult? Function(ButtonDrawerEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ButtonDrawer value)? $default, {
    TResult Function(ButtonDrawerEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ButtonDrawer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonDrawerCopyWith<$Res> {
  factory $ButtonDrawerCopyWith(
          ButtonDrawer value, $Res Function(ButtonDrawer) then) =
      _$ButtonDrawerCopyWithImpl<$Res, ButtonDrawer>;
}

/// @nodoc
class _$ButtonDrawerCopyWithImpl<$Res, $Val extends ButtonDrawer>
    implements $ButtonDrawerCopyWith<$Res> {
  _$ButtonDrawerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtonDrawer
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ButtonDrawerImplCopyWith<$Res> {
  factory _$$ButtonDrawerImplCopyWith(
          _$ButtonDrawerImpl value, $Res Function(_$ButtonDrawerImpl) then) =
      __$$ButtonDrawerImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String iconPath,
      String? routeName,
      @JsonKey(includeFromJson: false, includeToJson: false)
      VoidCallback? onPressed});
}

/// @nodoc
class __$$ButtonDrawerImplCopyWithImpl<$Res>
    extends _$ButtonDrawerCopyWithImpl<$Res, _$ButtonDrawerImpl>
    implements _$$ButtonDrawerImplCopyWith<$Res> {
  __$$ButtonDrawerImplCopyWithImpl(
      _$ButtonDrawerImpl _value, $Res Function(_$ButtonDrawerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonDrawer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? iconPath = null,
    Object? routeName = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_$ButtonDrawerImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      routeName: freezed == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String?,
      onPressed: freezed == onPressed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonDrawerImpl implements _ButtonDrawer {
  const _$ButtonDrawerImpl(
      {required this.title,
      required this.iconPath,
      this.routeName,
      @JsonKey(includeFromJson: false, includeToJson: false) this.onPressed,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$ButtonDrawerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonDrawerImplFromJson(json);

  @override
  final String title;
  @override
  final String iconPath;
  @override
  final String? routeName;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final VoidCallback? onPressed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ButtonDrawer(title: $title, iconPath: $iconPath, routeName: $routeName, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonDrawerImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, iconPath, routeName, onPressed);

  /// Create a copy of ButtonDrawer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonDrawerImplCopyWith<_$ButtonDrawerImpl> get copyWith =>
      __$$ButtonDrawerImplCopyWithImpl<_$ButtonDrawerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(title, iconPath, routeName, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
    TResult? Function()? empty,
  }) {
    return $default?.call(title, iconPath, routeName, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(title, iconPath, routeName, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ButtonDrawer value) $default, {
    required TResult Function(ButtonDrawerEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ButtonDrawer value)? $default, {
    TResult? Function(ButtonDrawerEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ButtonDrawer value)? $default, {
    TResult Function(ButtonDrawerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonDrawerImplToJson(
      this,
    );
  }
}

abstract class _ButtonDrawer implements ButtonDrawer {
  const factory _ButtonDrawer(
      {required final String title,
      required final String iconPath,
      final String? routeName,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final VoidCallback? onPressed}) = _$ButtonDrawerImpl;

  factory _ButtonDrawer.fromJson(Map<String, dynamic> json) =
      _$ButtonDrawerImpl.fromJson;

  String get title;
  String get iconPath;
  String? get routeName;
  @JsonKey(includeFromJson: false, includeToJson: false)
  VoidCallback? get onPressed;

  /// Create a copy of ButtonDrawer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtonDrawerImplCopyWith<_$ButtonDrawerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonDrawerEmptyImplCopyWith<$Res> {
  factory _$$ButtonDrawerEmptyImplCopyWith(_$ButtonDrawerEmptyImpl value,
          $Res Function(_$ButtonDrawerEmptyImpl) then) =
      __$$ButtonDrawerEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ButtonDrawerEmptyImplCopyWithImpl<$Res>
    extends _$ButtonDrawerCopyWithImpl<$Res, _$ButtonDrawerEmptyImpl>
    implements _$$ButtonDrawerEmptyImplCopyWith<$Res> {
  __$$ButtonDrawerEmptyImplCopyWithImpl(_$ButtonDrawerEmptyImpl _value,
      $Res Function(_$ButtonDrawerEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtonDrawer
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ButtonDrawerEmptyImpl implements ButtonDrawerEmpty {
  const _$ButtonDrawerEmptyImpl({final String? $type})
      : $type = $type ?? 'empty';

  factory _$ButtonDrawerEmptyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonDrawerEmptyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ButtonDrawer.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ButtonDrawerEmptyImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String title,
            String iconPath,
            String? routeName,
            @JsonKey(includeFromJson: false, includeToJson: false)
            VoidCallback? onPressed)?
        $default, {
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
    TResult Function(_ButtonDrawer value) $default, {
    required TResult Function(ButtonDrawerEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ButtonDrawer value)? $default, {
    TResult? Function(ButtonDrawerEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ButtonDrawer value)? $default, {
    TResult Function(ButtonDrawerEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonDrawerEmptyImplToJson(
      this,
    );
  }
}

abstract class ButtonDrawerEmpty implements ButtonDrawer {
  const factory ButtonDrawerEmpty() = _$ButtonDrawerEmptyImpl;

  factory ButtonDrawerEmpty.fromJson(Map<String, dynamic> json) =
      _$ButtonDrawerEmptyImpl.fromJson;
}
