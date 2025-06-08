import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/post/post.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class PostsRepository extends GetxController {
  AsyncResult<List<PostModel>> fetchPosts();
}
