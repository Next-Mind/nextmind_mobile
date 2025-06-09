// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _PostModel.fromJson(json);
    case 'details':
      return PostDetailedModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PostModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PostModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl) $default, {
    required TResult Function(
            int id, String title, String imageUrl, String content)
        details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String title, String imageUrl)? $default, {
    TResult? Function(int id, String title, String imageUrl, String content)?
        details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl)? $default, {
    TResult Function(int id, String title, String imageUrl, String content)?
        details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostModel value) $default, {
    required TResult Function(PostDetailedModel value) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostModel value)? $default, {
    TResult? Function(PostDetailedModel value)? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostModel value)? $default, {
    TResult Function(PostDetailedModel value)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call({int id, String title, String imageUrl});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostModelImplCopyWith(
          _$PostModelImpl value, $Res Function(_$PostModelImpl) then) =
      __$$PostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String imageUrl});
}

/// @nodoc
class __$$PostModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostModelImpl>
    implements _$$PostModelImplCopyWith<$Res> {
  __$$PostModelImplCopyWithImpl(
      _$PostModelImpl _value, $Res Function(_$PostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
  }) {
    return _then(_$PostModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostModelImpl implements _PostModel {
  const _$PostModelImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      final String? $type})
      : $type = $type ?? 'default';

  factory _$PostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String imageUrl;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      __$$PostModelImplCopyWithImpl<_$PostModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl) $default, {
    required TResult Function(
            int id, String title, String imageUrl, String content)
        details,
  }) {
    return $default(id, title, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String title, String imageUrl)? $default, {
    TResult? Function(int id, String title, String imageUrl, String content)?
        details,
  }) {
    return $default?.call(id, title, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl)? $default, {
    TResult Function(int id, String title, String imageUrl, String content)?
        details,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, title, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostModel value) $default, {
    required TResult Function(PostDetailedModel value) details,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostModel value)? $default, {
    TResult? Function(PostDetailedModel value)? details,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostModel value)? $default, {
    TResult Function(PostDetailedModel value)? details,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostModelImplToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final int id,
      required final String title,
      required final String imageUrl}) = _$PostModelImpl;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$PostModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageUrl;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostModelImplCopyWith<_$PostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDetailedModelImplCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$$PostDetailedModelImplCopyWith(_$PostDetailedModelImpl value,
          $Res Function(_$PostDetailedModelImpl) then) =
      __$$PostDetailedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String imageUrl, String content});
}

/// @nodoc
class __$$PostDetailedModelImplCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$PostDetailedModelImpl>
    implements _$$PostDetailedModelImplCopyWith<$Res> {
  __$$PostDetailedModelImplCopyWithImpl(_$PostDetailedModelImpl _value,
      $Res Function(_$PostDetailedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? content = null,
  }) {
    return _then(_$PostDetailedModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDetailedModelImpl implements PostDetailedModel {
  const _$PostDetailedModelImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.content,
      final String? $type})
      : $type = $type ?? 'details';

  factory _$PostDetailedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDetailedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String content;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PostModel.details(id: $id, title: $title, imageUrl: $imageUrl, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl, content);

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailedModelImplCopyWith<_$PostDetailedModelImpl> get copyWith =>
      __$$PostDetailedModelImplCopyWithImpl<_$PostDetailedModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl) $default, {
    required TResult Function(
            int id, String title, String imageUrl, String content)
        details,
  }) {
    return details(id, title, imageUrl, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String title, String imageUrl)? $default, {
    TResult? Function(int id, String title, String imageUrl, String content)?
        details,
  }) {
    return details?.call(id, title, imageUrl, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String title, String imageUrl)? $default, {
    TResult Function(int id, String title, String imageUrl, String content)?
        details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(id, title, imageUrl, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostModel value) $default, {
    required TResult Function(PostDetailedModel value) details,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostModel value)? $default, {
    TResult? Function(PostDetailedModel value)? details,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostModel value)? $default, {
    TResult Function(PostDetailedModel value)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDetailedModelImplToJson(
      this,
    );
  }
}

abstract class PostDetailedModel implements PostModel {
  const factory PostDetailedModel(
      {required final int id,
      required final String title,
      required final String imageUrl,
      required final String content}) = _$PostDetailedModelImpl;

  factory PostDetailedModel.fromJson(Map<String, dynamic> json) =
      _$PostDetailedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imageUrl;
  String get content;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDetailedModelImplCopyWith<_$PostDetailedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
