import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class AppDefaulButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final IconData prefixIcon;
  final IconData sufixIcon;

  const AppDefaulButton({
    Key key,
    @required this.onTap,
    @required this.text,
    this.prefixIcon,
    this.sufixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: FlatButton(
        onPressed: onTap,
        color: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildPrefixIcon(),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            _buildSufixIcon(),
          ],
        ),
      ),
    );
  }

  Row _buildPrefixIcon() {
    return Row(
      children: [
        Icon(
          prefixIcon,
          color: Colors.white,
        ),
        SizedBox(width: 10)
      ],
    );
  }

  Row _buildSufixIcon() {
    return Row(
      children: [
        SizedBox(width: 10),
        Icon(
          sufixIcon,
          color: Colors.white,
        )
      ],
    );
  }
}
