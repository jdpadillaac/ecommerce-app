import 'package:ecommerce_app/api/mock/categoriers_data.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:ecommerce_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class AppCategoryList extends StatelessWidget {
  const AppCategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            apiCategories.length,
            (index) => CategoryCard(
              icon: apiCategories[index]["icon"],
              text: apiCategories[index]["text"],
              press: () {
                print('hola');
              },
            ),
          )
        ],
      ),
    );
  }
}
