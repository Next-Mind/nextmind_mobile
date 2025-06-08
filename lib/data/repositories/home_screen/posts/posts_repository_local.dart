import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/posts/posts_repository.dart';
import 'package:nextmind_mobile/domain/models/post/post.dart';
import 'package:result_dart/result_dart.dart';

class PostsRepositoryLocal extends GetxController implements PostsRepository {
  @override
  AsyncResult<List<PostModel>> fetchPosts() async {
    List<PostModel> posts = [
      PostModel(
        id: 1,
        title: 'Saúde Mental em Foco: 10 Passos importantes',
        imageUrl:
            'https://images.unsplash.com/photo-1621887348744-6b0444f8a058?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      PostModel(
        id: 2,
        title: 'Saúde Mental em Foco: 10 Passos importantes',
        imageUrl:
            'https://images.unsplash.com/photo-1621887348744-6b0444f8a058?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
      PostModel(
        id: 3,
        title: 'Saúde Mental em Foco: 10 Passos importantes',
        imageUrl:
            'https://images.unsplash.com/photo-1621887348744-6b0444f8a058?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
    ];
    return Success(posts);
  }
}
