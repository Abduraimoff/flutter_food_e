import 'package:flutter/material.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

import 'auth_widgets/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: AppFontStyle.heading1Fz,
                      fontWeight: AppFontStyle.heading1Fw,
                      color: AppColor.kDarkColor,
                    ),
                  ),
                  const Spacer(),
                  const CustomTextField(
                    title: 'EMAIL',
                    inputText: 'johndoe@email.com',
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    title: 'PASSWORD',
                    inputText: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/root');
                    },
                    child: const Text(
                      'REGISTER',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: AppFontStyle.heading1Fw,
                          color: AppColor.kGrayColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: AppFontStyle.heading1Fw,
                            color: AppColor.kSecondaryDarkColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
