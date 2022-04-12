import 'package:flutter/material.dart';
import 'package:flutter_bullet_list/flutter_bullet_list.dart';

import '../../../../config/constants.dart';

class PostDescriptionComponent extends StatelessWidget {
  const PostDescriptionComponent({
    Key? key,
    required List<String> description,
  })  : _postDescription = description,
        super(key: key);

  final List<String> _postDescription;

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    final List<ListItemModel> _points = _postDescription
        .map<ListItemModel>((e) => ListItemModel(label: e))
        .toList();
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: FlutterBulletList(
            data: _points,
            textStyle:
                _theme.textTheme.bodyText1?.copyWith(color: kPrimaryColor),
            bulletColor: kAccentColor,
            bulletSize: 4.0,
            bulletSpacing: 18.0,
            bulletType: BulletType.circle,
            spaceBetweenItem: 10.0,
          ),
        ),
      ),
    );
  }
}
