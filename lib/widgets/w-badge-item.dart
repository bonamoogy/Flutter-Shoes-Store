import 'package:flutter/material.dart';

class WBadgeItem extends StatelessWidget {
  final String text;
  final Function onTap;
  final int index;
  final bool isActive;

  WBadgeItem({
    @required this.text,
    @required this.onTap,
    @required this.index,
    @required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onTap(this.index),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isActive
              ? Color(0XFFa0daf4)
              : Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: new Offset(0, -1),
              color: Colors.grey.shade100,
              blurRadius: 7,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
