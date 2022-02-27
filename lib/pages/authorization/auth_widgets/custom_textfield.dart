import 'package:flutter/material.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String inputText;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.title,
    required this.inputText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: AppColor.kPrimaryColor,
              fontSize: AppFontStyle.tagFz,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            isCollapsed: true,
            contentPadding: const EdgeInsets.all(20),
            filled: true,
            fillColor: Colors.grey[300],
            suffixIcon: isPassword
                ? const Icon(
                    Icons.remove_red_eye,
                    color: AppColor.kPrimaryColor,
                  )
                : null,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            hintText: inputText,
            hintStyle: const TextStyle(color: Color(0xFFA3A3A3)),
          ),
        ),
      ],
    );
  }
}
