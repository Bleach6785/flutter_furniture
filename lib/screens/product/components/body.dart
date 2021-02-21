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
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding / 2,
                ),
                // color: Colors.blueAccent,
                height: 160.0,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 136.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: kBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
