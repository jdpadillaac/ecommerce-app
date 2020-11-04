import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';

class AppDefaulButton extends StatelessWidget {
  final Function onTap;
  final String text;

  const AppDefaulButton({Key key, @required this.onTap, @required this.text})
      : super(key: key);

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
        child: Text(
          'Continuar',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
