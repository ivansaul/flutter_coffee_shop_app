import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/ui/theme/app_theme.dart';
import 'package:flutter_coffee_shop_app/ui/widgets/custom_filledbutton.dart';

class HorizontalCardWidget extends StatelessWidget {
  const HorizontalCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Container(
        padding: const EdgeInsets.only(left: 9, right: 15, top: 9, bottom: 9),
        height: 98,
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
        child: Row(
          children: [
            SizedBox(
              width: 147,
              height: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://i.imgur.com/wV5AoUV.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '5 Coffe Beans You Must Try',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Apptheme.cardTitleMedium,
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Icon(
                        Icons.coffee_rounded,
                        color: Apptheme.iconColor,
                      ),
                      Spacer(),
                      CustomFilledButton(
                        height: 34,
                        width: 33,
                        color: Apptheme.buttonBackground1Color,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.paperplane_fill,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
