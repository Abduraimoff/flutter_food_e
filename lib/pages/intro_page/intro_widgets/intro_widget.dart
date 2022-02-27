import 'package:flutter/material.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class IntroWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String buttonText;
  final VoidCallback? onPressed;

  const IntroWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "FOOD-",
                      style: TextStyle(
                        fontSize: AppFontStyle.heading2Fz,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: "E",
                      style: TextStyle(
                        fontSize: AppFontStyle.heading2Fz,
                        color: AppColor.kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                title,
                style: const TextStyle(
                  fontSize: AppFontStyle.heading1Fz,
                  fontWeight: AppFontStyle.heading1Fw,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: AppFontStyle.bodyFz,
                  fontWeight: AppFontStyle.bodyFw,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: onPressed,
                child: Text(
                  buttonText,
                  style: const TextStyle(fontSize: AppFontStyle.heading3Fz),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 40),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
