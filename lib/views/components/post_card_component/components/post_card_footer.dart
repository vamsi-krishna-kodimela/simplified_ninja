import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/constants.dart';
import '../../../../utils/date_time_util.dart';

class PostCardFooter extends StatelessWidget {
  const PostCardFooter({
    Key? key,
    required DateTime postedOn,
  })  : _postedOn = postedOn,
        super(key: key);

  final DateTime _postedOn;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          DateTimeUtil().formatPostView(_postedOn),
          style: _theme.textTheme.subtitle2?.copyWith(color: kSecondaryColor),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.userNinja,
            color: kAccentColor,
          ),
        ),
      ],
    );
  }
}
