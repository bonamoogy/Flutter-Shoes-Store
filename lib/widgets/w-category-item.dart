import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';
import '../models/m-category.dart';

class WCategoryItem extends StatelessWidget {
  final MCategory category;
  final bool isActive;
  final Function onTap;

  WCategoryItem({
    @required this.category,
    @required this.isActive,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onTap(category),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          // color: Theme.of(context).scaffoldBackgroundColor,
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 10,
              offset: new Offset(isActive ? 4 : 0, isActive ? 6 : -1),
              spreadRadius: isActive ? 3 : 1,
              color: isActive ? Colors.black12 : Colors.grey.shade200,
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            SvgPicture.asset(
              category.iconPath,
              height: 20,
              width: 20,
              color: Colors.blueGrey,
            ),
            const SizedBox(width: 10),
            Text(
              category.title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
