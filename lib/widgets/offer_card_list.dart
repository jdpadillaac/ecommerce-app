import 'package:ecommerce_app/api/mock/offerts_data.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:ecommerce_app/widgets/offer_card.dart';
import 'package:flutter/material.dart';

class OferdCardList extends StatelessWidget {
  const OferdCardList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: getProportionateScreenWidth(20),
            ),
            ...List.generate(
              offerCardData.length,
              (index) => OferCard(
                title: offerCardData[index]["title"],
                subTitle: offerCardData[index]["subtitle"],
                image: offerCardData[index]["image"],
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
