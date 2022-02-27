import 'package:flutter/material.dart';

import 'intro_widgets/intro_widget.dart';

class IntroOnePage extends StatelessWidget {
  const IntroOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroWidget(
        imageUrl: 'assets/images/intro_one.jpg',
        title: 'AWESOME\nLOCAL FOOD',
        text: 'Discover delicious food from the amazing restaurants near you',
        buttonText: 'NEXT',
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/introTwo');
        },
      ),
    );
  }
}
