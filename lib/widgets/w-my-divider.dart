import 'package:flutter/material.dart';

class WMyDivider extends StatelessWidget {
  const WMyDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 5,
      color: Colors.grey.shade200,
    );
  }
}
