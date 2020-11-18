import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: appSecondColor),
          ),
          InkWell(
            onTap: press,
            child: Text(
              'Ver mas',
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
