import 'package:flutter/material.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "FOOD-",
                style: TextStyle(
                  fontSize: AppFontStyle.heading1Fz,
                  fontWeight: AppFontStyle.heading1Fw,
                  color: AppColor.kDarkColor,
                ),
              ),
              TextSpan(
                text: "E",
                style: TextStyle(
                  fontSize: AppFontStyle.heading1Fz,
                  fontWeight: AppFontStyle.heading1Fw,
                  color: AppColor.kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
