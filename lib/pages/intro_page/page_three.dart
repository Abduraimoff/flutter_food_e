import 'package:flutter/material.dart';

import 'intro_widgets/intro_widget.dart';

class IntroThreePage extends StatelessWidget {
  const IntroThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroWidget(
        imageUrl: 'assets/images/intro_three.jpg',
        title: 'GRAB THE\nBEST DEALS AROUND',
        text:
            'Grab the best deals and discounts around and save on your every order',
        buttonText: 'GET STARTED',
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/getStarted');
        },
      ),
    );
  }
}
