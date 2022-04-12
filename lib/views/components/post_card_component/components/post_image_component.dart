import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import '../../../../config/constants.dart';

class PostImageComponent extends StatelessWidget {
  const PostImageComponent({Key? key, required this.postImages})
      : super(key: key);
  final List<String> postImages;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/2,
      child: postImages.isEmpty
          ? Container(
              color: kPrimaryColor,
            )
          : Container(
              color: kPrimaryColor,
              child: ImageSlideshow(
                children: postImages
                    .map(
                      (image) => Image.network(
                        image,
                        fit: BoxFit.cover,
                      ),
                    )
                    .toList(),
                width: double.infinity,
                indicatorColor: kAccentColor,
                indicatorBackgroundColor: kPrimaryColor,
              ),
            ),
    );
  }
}
