import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/material.dart';

class OferCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final Function press;

  const OferCard({
    Key key,
    @required this.title,
    @required this.subTitle,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(240),
      height: getProportionateScreenWidth(100),
      margin: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF343434).withOpacity(0.5),
                    Color(0xFF343434).withOpacity(0.15),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text.rich(
                TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: '$title \n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: subTitle,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
