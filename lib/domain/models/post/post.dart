import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
sealed class PostModel with _$PostModel {
  const factory PostModel({
    required int id,
    required String title,
    required String imageUrl,
  }) = _PostModel;

  const factory PostModel.details({
    required int id,
    required String title,
    required String imageUrl,
    required String content,
  }) = PostDetailedModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
