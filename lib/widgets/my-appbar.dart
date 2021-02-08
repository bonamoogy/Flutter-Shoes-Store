import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title, leading;

  MyAppBar({
    @required this.title,
    @required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: this.leading,
      // leading: IconButton(
      //   icon: Icon(leadIcon),
      //   onPressed: ,
      //   onPressed: () => scaffoldKey.currentState.openDrawer(),
      // ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
      title: this.title,
    );
  }
}
