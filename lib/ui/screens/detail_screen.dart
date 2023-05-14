import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/entities/coffee.dart';
import 'package:flutter_coffee_shop_app/ui/theme/app_theme.dart';
import 'package:flutter_coffee_shop_app/ui/widgets/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffee;
  const DetailScreen({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Apptheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section -> Card Image
              Expanded(
                child: CardImageView(coffee: coffee),
              ),
              const SizedBox(height: 30),
              // Section -> Description
              Text(
                'Description',
                style: Apptheme.descriptionTitle,
              ),
              const SizedBox(height: 15),
              DescriptionView(description: coffee.description),
              const SizedBox(height: 30),
              // Section -> Size Choise
              const SizeChoiseView(),
              const SizedBox(height: 30),
              // Section -> Price
              SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Price',
                          style: Apptheme.priceTitleLarge,
                        ),
                        const Spacer(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: '\$ ',
                                  style: Apptheme.priceCurrencyLarge),
                              TextSpan(
                                text: coffee.price.toString(),
                                style: Apptheme.priceValueLarge,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomFilledButton(
                      width: 188,
                      height: 56,
                      borderRadius: 16,
                      color: Apptheme.buttonBackground1Color,
                      child: Text('Buy Now', style: Apptheme.buttonTextStyle),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardImageView extends StatelessWidget {
  final Coffee coffee;
  const CardImageView({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              coffee.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: CustomIconButton(
            width: 38,
            height: 38,
            borderRadius: 10,
            child: Icon(
              CupertinoIcons.back,
              color: Apptheme.iconColor,
            ),
          ),
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: CustomIconButton(
            width: 38,
            height: 38,
            borderRadius: 10,
            child: Icon(
              Icons.favorite,
              color: Apptheme.iconColor,
            ),
          ),
        ),

        // BlurCardView
         BlurCardView(coffee: coffee,),
      ],
    );
  }
}

class BlurCardView extends StatelessWidget {
  final Coffee coffee;
  const BlurCardView({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4,
          sigmaY: 4,
        ),
        child: Container(
          alignment: Alignment.center,
          // width: 50,
          height: 152,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffee.name,
                          style: Apptheme.cardTitleLarge,
                        ),
                        Text(
                          coffee.ingredients,
                          style: Apptheme.cardSubtitleLarge,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 57,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Apptheme.cardChipBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/coffe.svg',
                              height: 25,
                            ),
                            Text(
                              'Coffee',
                              style: Apptheme.cardChipTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 57,
                      height: 57,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Apptheme.cardChipBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset('assets/icons/milk.svg'),
                            Text(
                              'Milk',
                              style: Apptheme.cardChipTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Apptheme.reviewIconColor,
                      size: 20,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      coffee.rating.toString(),
                      style: Apptheme.cardTitleSmall,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '(${coffee.reviews})',
                      style: Apptheme.cardSubtitleSmall,
                    ),
                    const Spacer(),
                    Container(
                      width: 103,
                      height: 31,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Apptheme.cardChipBackgroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 2,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Medium Roasted',
                              style: Apptheme.cardChipTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SizeChoiseView extends StatelessWidget {
  const SizeChoiseView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFilledButton(
          width: 91,
          height: 36,
          color: Apptheme.buttonBackground2Color,
          borderColor: Apptheme.buttonBorderColor,
          child: Text(
            'S',
            style: Apptheme.buttonActiveTextStyle,
          ),
        ),
        CustomFilledButton(
          width: 91,
          height: 36,
          color: Apptheme.buttonBackground2Color,
          child: Text(
            'M',
            style: Apptheme.buttonInactiveTextStyle,
          ),
        ),
        CustomFilledButton(
          width: 91,
          height: 36,
          color: Apptheme.buttonBackground2Color,
          child: Text(
            'L',
            style: Apptheme.buttonInactiveTextStyle,
          ),
        ),
      ],
    );
  }
}

class DescriptionView extends StatelessWidget {
  final String description;
  const DescriptionView({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: description.substring(0, 120),
            style: Apptheme.descriptionContent,
          ),
          TextSpan(
            text: ' ...',
            style: Apptheme.descriptionReadMore,
          ),
          TextSpan(
            text: ' Read More',
            style: Apptheme.descriptionReadMore,
          ),
        ],
      ),
    );
  }
}
