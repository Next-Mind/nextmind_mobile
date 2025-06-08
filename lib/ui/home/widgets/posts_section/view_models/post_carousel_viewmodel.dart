import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/posts/posts_repository.dart';
import 'package:nextmind_mobile/domain/models/post/post.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class PostCarouselViewmodel extends GetxController {
  static get to => Get.find<PostCarouselViewmodel>();

  final PostsRepository _postsRepository = Get.find();

  List<PostModel> posts = List.empty();

  late final Command0 fetchPosts = Command0(_fetchPosts);

  AsyncResult<Unit> _fetchPosts() async {
    posts =
        await _postsRepository.fetchPosts().getOrThrow().then((posts) => posts);
    return Success(unit);
  }

  @override
  void onInit() {
    super.onInit();
    fetchPosts.execute();
  }
}
