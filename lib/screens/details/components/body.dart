import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../components/product_image.dart';
import '../components/color_dots.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          // height: 200.0,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: [
              ProductPoster(
                size: size,
                image: "assets/images/Item_2.png",
              ),
              Padding(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
