import 'package:flutter/material.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        color: AppColor.kDarkColor,
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
              const SizedBox(height: 50),
              const Text(
                'GET STARTED',
                style: TextStyle(
                  fontSize: AppFontStyle.heading1Fz,
                  fontWeight: AppFontStyle.heading1Fw,
                  color: AppColor.kDarkColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                ' Get started and enjoy the awesome local food right at your home.',
                style: TextStyle(
                  fontSize: AppFontStyle.bodyFz,
                  fontWeight: AppFontStyle.bodyFw,
                  color: AppColor.kDarkColor,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: AppFontStyle.heading3Fz),
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
              const SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text(
                  'REGISTER',
                  style: TextStyle(
                    fontSize: AppFontStyle.heading3Fz,
                    color: AppColor.kPrimaryColor,
                  ),
                ),
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(double.infinity, 40),
                  ),
                  side: MaterialStateProperty.all(
                    const BorderSide(color: AppColor.kPrimaryColor),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
