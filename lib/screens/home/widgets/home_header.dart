import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/size_data.dart';
import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _BuildSearchBox(),
          _IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {},
          ),
          _IconBtnWithCounter(
            icon: Icons.notification_important_outlined,
            itemsCout: 0,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class _BuildSearchBox extends StatelessWidget {
  const _BuildSearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      height: 50,
      decoration: BoxDecoration(
        color: appThirdColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Buscar',
          prefixIcon: Icon(Icons.search),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 20,
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(10)),
        ),
      ),
    );
  }
}

class _IconBtnWithCounter extends StatelessWidget {
  final IconData icon;
  final int itemsCout;
  final GestureTapCallback press;
  const _IconBtnWithCounter({
    Key key,
    @required this.icon,
    this.itemsCout,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: getProportionateScreenWidth(50),
            width: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: appThirdColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: appThirdColor,
            ),
          ),
          itemsCout != null ? _buildItemCount() : SizedBox(),
        ],
      ),
    );
  }

  Positioned _buildItemCount() {
    return Positioned(
      right: 0,
      child: Container(
        height: getProportionateScreenWidth(16),
        width: getProportionateScreenWidth(16),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(width: 0.5),
        ),
        child: Center(
          child: Text(
            '$itemsCout ',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
