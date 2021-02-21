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
                margin: EdgeInsets.only(top: 70.0),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ProductCard(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
          ),
          // 產品照片
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 160.0,
              width: 200.0,
              child: Image.asset(
                "assets/images/Item_1.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
