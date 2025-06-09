import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/home/widgets/posts_section/view_models/post_carousel_viewmodel.dart';
import 'package:nextmind_mobile/ui/home/widgets/posts_section/widgets/post_card.dart';

class PostCarousel extends StatelessWidget {
  const PostCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final PostCarouselViewmodel viewModel = PostCarouselViewmodel.to;
    return SizedBox(
      height: 240,
      child: ListenableBuilder(
        listenable: viewModel.fetchPosts,
        builder: (context, child) {
          return viewModel.fetchPosts.isRunning
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : PageView.builder(
                  itemCount: viewModel.posts.length,
                  controller: PageController(viewportFraction: 0.8),
                  itemBuilder: (context, index) {
                    final item = viewModel.posts[index];
                    return PostCard(
                      post: item,
                    );
                  },
                );
        },
      ),
    );
  }
}
