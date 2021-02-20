import 'package:flutter/material.dart';
import 'package:flutter_furniture/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      actions: [
        new IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: null,
        ),
      ],
    );
  }
}
