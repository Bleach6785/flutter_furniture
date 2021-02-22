import 'package:flutter/material.dart';

import '../../../constants.dart';

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
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                height: size.width * 0.8,
                // color: Colors.black,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: size.width * 0.75,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Image.asset(
                      "assets/images/Item_2.png",
                      height: size.width * 0.7,
                      width: size.width * 0.7,
                      fit: BoxFit.cover,
                    )
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
