
import 'package:flutter/material.dart';

import '../../../../config/constants.dart';

class PostDescriptionComponent extends StatelessWidget {
  const PostDescriptionComponent({
    Key? key,
    required String description,
  })  : _postDescription = description,
        super(key: key);

  final String _postDescription;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            _postDescription,
            style: _theme.textTheme.bodyText1?.copyWith(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
