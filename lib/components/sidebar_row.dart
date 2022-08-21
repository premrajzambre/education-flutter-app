import 'package:education/constants.dart';
import 'package:flutter/cupertino.dart';

import '../model/sideBar.dart';

class SidebarRow extends StatelessWidget {
  SidebarRow({
    Key? key,
    required this.item,
  }) : super(key: key);

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              gradient: item.background,
            ),
            child: item.icon),
        SizedBox(
          width: 12,
        ),
        Container(
          child: Text(
            item.title,
            style: kCalloutLabelStyle,
          ),
        )
      ],
    );
  }
}
