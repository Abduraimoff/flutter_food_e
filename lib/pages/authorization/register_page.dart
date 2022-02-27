import 'package:flutter/material.dart';
import 'package:food_e/pages/authorization/auth_widgets/custom_textfield.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'REGISTER',
                    style: TextStyle(
                      fontSize: AppFontStyle.heading1Fz,
                      fontWeight: AppFontStyle.heading1Fw,
                      color: AppColor.kDarkColor,
                    ),
                  ),
                  const Spacer(),
                  const CustomTextField(
                    title: 'FULL NAME',
                    inputText: 'John Doe',
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    title: 'EMAIL',
                    inputText: 'johndoe@email.com',
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    title: 'PHONE',
                    inputText: '+00 123 456 7890',
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(
                    title: 'PASSWORD',
                    inputText: 'Password',
                    isPassword: true,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,'/root');
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
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: AppFontStyle.heading1Fw,
                          color: AppColor.kGrayColor,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: AppFontStyle.heading1Fw,
                            color: AppColor.kSecondaryDarkColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
