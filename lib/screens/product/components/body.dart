import 'package:flutter/material.dart';

import '../../../components/search_box.dart';
import '../../../constants.dart';
import './category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(),
        CategoryList(),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
