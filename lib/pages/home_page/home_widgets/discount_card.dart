import 'package:flutter/material.dart';
import 'package:food_e/utils/font_style.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF2fdbb0),
            Color(0xFF1EAE94),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'GET',
                    style: TextStyle(
                      fontSize: AppFontStyle.heading2Fz,
                      fontWeight: AppFontStyle.heading1Fw,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ' 50%',
                    style: TextStyle(
                      fontSize: AppFontStyle.heading2Fz,
                      fontWeight: AppFontStyle.heading1Fw,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' AS A JOINING BONUS',
                    style: TextStyle(
                      fontSize: AppFontStyle.heading2Fz,
                      fontWeight: AppFontStyle.heading1Fw,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'USE CODE ON CHECKOUT',
              style: TextStyle(
                fontSize: AppFontStyle.tagFz,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'NEW50',
              style: TextStyle(
                fontSize: AppFontStyle.heading2Fz,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
