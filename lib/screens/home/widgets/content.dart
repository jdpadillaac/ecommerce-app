import 'package:ecommerce_app/screens/home/widgets/home_header.dart';
import 'package:ecommerce_app/screens/home/widgets/promo_card.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:ecommerce_app/widgets/categories.dart';
import 'package:ecommerce_app/widgets/offer_card_list.dart';
import 'package:ecommerce_app/widgets/section_title.dart';
import 'package:flutter/material.dart';

class HomeSrennContent extends StatelessWidget {
  const HomeSrennContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            TopHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            PromoCard(),
            SizedBox(height: getProportionateScreenHeight(30)),
            AppCategoryList(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SectionTitle(
              title: 'Especial para ti',
              press: () {},
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            OferdCardList(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SectionTitle(
              title: 'Productos populares',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
