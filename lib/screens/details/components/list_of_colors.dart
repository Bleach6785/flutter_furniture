import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColorDot(
            fillColor: Color(0XFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0XFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
