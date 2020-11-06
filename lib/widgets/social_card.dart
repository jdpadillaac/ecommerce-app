import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialCard extends StatelessWidget {
  final String icon;
  final Function onPress;
  const SocialCard({Key key, @required this.icon, @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        height: 60,
        decoration: const BoxDecoration(
          color: appWhiteLightColor,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
      onTap: () => onPress,
    );
  }
}
