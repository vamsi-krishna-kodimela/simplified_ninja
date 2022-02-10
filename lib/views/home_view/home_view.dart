import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simplified_ninja/models/post.dart';
import 'package:simplified_ninja/providers/posts_providers.dart';

import '../components/post_card_component/post_card_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String kRouteName = "/";

  @override
  Widget build(BuildContext context) {
    final List<Post> _posts = Provider.of<PostsProvider>(context).posts;

    return Scaffold(
      body: PageView.builder(
        itemCount: _posts.length,
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          final Post _post = _posts[index];
          return PostCardComponent(post: _post);
        },
      ),
    );
  }
}
