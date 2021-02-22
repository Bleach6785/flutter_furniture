import 'package:flutter/material.dart';

import '../../../components/search_box.dart';
import '../../../constants.dart';
import './category_list.dart';
import '../../../screens/product/components/product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => ProductCard(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
