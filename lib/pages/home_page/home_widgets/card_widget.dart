import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;

  const CardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 157,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              imageUrl,
            ),
          ),
          const Positioned(
            top: 125,
            right: 10,
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 167,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: AppFontStyle.bodyFz,
                fontWeight: AppFontStyle.bodyFw,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 10,
            child: Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: AppFontStyle.heading3Fz,
                    fontWeight: AppFontStyle.bodyFw,
                    color: AppColor.kPrimaryColor,
                  ),
                ),
                const SizedBox(width: 40),
                IconButton(
                  onPressed: () {},
                  splashRadius: 20,
                  icon: SvgPicture.asset(
                    'assets/icons/busket.svg',
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
