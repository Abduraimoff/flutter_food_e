import 'package:flutter/material.dart';
import 'package:food_e/pages/home_page/home_widgets/card_widget.dart';
import 'package:food_e/pages/home_page/home_widgets/restaurant_card.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:food_e/utils/font_style.dart';

import 'home_widgets/discount_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kGrayColor.withOpacity(.2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const CustomAppBar(),
                  const SizedBox(height: 30),
                  const DiscountCard(),
                  const SizedBox(height: 40),
                  const Text(
                    'RECOMMENDED FOR YOU',
                    style: TextStyle(
                      fontSize: AppFontStyle.tagFz,
                      fontWeight: AppFontStyle.bodyFw,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 250,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CardWidget(
                          imageUrl: 'assets/images/rec.jpg',
                          title: 'Egg Salad',
                          price: '\$ 5.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec2.jpg',
                          title: 'Grilled Salmon',
                          price: '\$ 15.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec.jpg',
                          title: 'Egg Salad',
                          price: '\$ 5.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec2.jpg',
                          title: 'Grilled Salmon',
                          price: '\$ 15.00',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'RESTAURANTS',
                    style: TextStyle(
                      fontSize: AppFontStyle.tagFz,
                      fontWeight: AppFontStyle.bodyFw,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        RestaurantCard(imageUrl: 'assets/images/mcDonalds.png'),
                        SizedBox(width: 20),
                        RestaurantCard(
                            imageUrl: 'assets/images/burgerKing.png'),
                        SizedBox(width: 20),
                        RestaurantCard(
                            imageUrl: 'assets/images/dominosPizza.png'),
                        SizedBox(width: 20),
                        RestaurantCard(imageUrl: 'assets/images/Logo.png'),
                        SizedBox(width: 20),
                        RestaurantCard(imageUrl: 'assets/images/pizzaHunt.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'POPULAR IN YOUR AREA',
                    style: TextStyle(
                      fontSize: AppFontStyle.tagFz,
                      fontWeight: AppFontStyle.bodyFw,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CardWidget(
                          imageUrl: 'assets/images/rec.jpg',
                          title: 'Egg Salad',
                          price: '\$ 5.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec2.jpg',
                          title: 'Grilled Salmon',
                          price: '\$ 15.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec.jpg',
                          title: 'Egg Salad',
                          price: '\$ 5.00',
                        ),
                        SizedBox(width: 20),
                        CardWidget(
                          imageUrl: 'assets/images/rec2.jpg',
                          title: 'Grilled Salmon',
                          price: '\$ 15.00',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Hello,',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.kDarkColor,
                ),
              ),
              TextSpan(
                text: ' John!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColor.kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const Text(
          'HOME',
          style: TextStyle(
            fontSize: AppFontStyle.bodyFz,
            fontWeight: AppFontStyle.bodyFw,
            color: AppColor.kSecondaryColor,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.location_on_outlined,
          color: AppColor.kSecondaryColor,
        )
      ],
    );
  }
}
