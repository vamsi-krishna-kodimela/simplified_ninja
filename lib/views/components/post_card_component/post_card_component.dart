import 'package:flutter/material.dart';

import '../../../config/constants.dart';
import '../../../models/post.dart';
import 'components/post_card_footer.dart';
import 'components/post_description_component.dart';
import 'components/post_image_component.dart';
import 'components/post_title_component.dart';

class PostCardComponent extends StatelessWidget {
  const PostCardComponent({
    Key? key,
    required Post post,
  })  : _post = post,
        super(key: key);

  final Post _post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostImageComponent(postImages: _post.images),
        Expanded(
          child: Container(
            color: kWhiteColor,
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            width: double.infinity,
            child: Column(
              children: [
                PostTitleComponent(postTitle: _post.title),
                PostDescriptionComponent(description: _post.description),
                PostCardFooter(
                  postedOn: _post.postedOn,
                ),
              ],
            ),
          ),
          flex: 5,
        ),
      ],
    );
  }
}
