import 'package:flutter/material.dart';

import 'intro_widgets/intro_widget.dart';

class IntroTwoPage extends StatelessWidget {
  const IntroTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroWidget(
        imageUrl: 'assets/images/intro_two.jpg',
        title: "DELIVERED AT\nYOUR DOORSTEP",
        text:
            'Fresh and delicious local food delivered from the restaurants to your doorstep',
        buttonText: 'NEXT',
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/introThree');
        },
      ),
    );
  }
}
