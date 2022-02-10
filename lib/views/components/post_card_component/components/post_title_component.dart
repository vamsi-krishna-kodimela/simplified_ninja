import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class PostTitleComponent extends StatelessWidget {
  const PostTitleComponent({
    Key? key,
    required String postTitle,
  })  : _postTitle = postTitle,
        super(key: key);

  final String _postTitle;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: Text(
        _postTitle,
        style: _theme.textTheme.headline1?.copyWith(
          fontSize: 20.0,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
