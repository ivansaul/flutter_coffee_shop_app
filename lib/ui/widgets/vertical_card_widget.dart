import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/entities/coffee.dart';
import 'package:flutter_coffee_shop_app/ui/screens/detail_screen.dart';
import 'package:flutter_coffee_shop_app/ui/theme/app_theme.dart';
import 'package:flutter_coffee_shop_app/ui/widgets/custom_filledbutton.dart';

class VerticalCardWidget extends StatelessWidget {
  final Coffee coffee;
  const VerticalCardWidget({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Container(
        padding: const EdgeInsets.all(9),
        width: 140,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(23)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff282C34),
              Color(0xff10131A),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                SizedBox(
                  height: 144,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Image.network(
                        coffee.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Apptheme.reviewIconColor,
                            size: 15,
                          ),
                          Text(
                            coffee.rating.toString(),
                            style: Apptheme.reviewRatting,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(coffee: coffee),
                  ),
                );
              },
              child: Text(coffee.name, style: Apptheme.cardTitleSmall),
            ),
            const SizedBox(height: 3),
            Text('Whit Oat Milk', style: Apptheme.cardSubtitleSmall),
            const Spacer(),
            Row(
              children: [
                Row(
                  children: [
                    Text('\$', style: Apptheme.priceCurrencySmall),
                    const SizedBox(width: 3),
                    Text(
                      coffee.price.toString(),
                      style: Apptheme.priceValueSmall,
                    ),
                  ],
                ),
                const Spacer(),
                const CustomFilledButton(
                  height: 31,
                  width: 34,
                  color: Apptheme.buttonBackground1Color,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
