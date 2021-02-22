import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
  }) : super(key: key);

  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          // 產品說明與價格
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: SizedBox(
              height: 136.0,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    child: Text(
                      "Classic Leather Arm Chair",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22.0),
                        topRight: Radius.circular(22.0),
                      ),
                    ),
                    child: Text(
                      "\$58",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
