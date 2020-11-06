import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class AppbarBackButton extends StatelessWidget {
  const AppbarBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        color: appPrimaryColor,
        size: 30,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
