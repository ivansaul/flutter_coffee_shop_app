import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop_app/data/tmp_data.dart';
import 'package:flutter_coffee_shop_app/ui/screens/screens.dart';
import 'package:flutter_coffee_shop_app/ui/theme/app_theme.dart';
import 'package:flutter_coffee_shop_app/ui/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final introductionItems = DataTmp.introductionList;
    final int itemCount = introductionItems.length;

    PageController controller = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            physics: const ClampingScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (context, index) {
              final item = introductionItems[index];
              return Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.network(item.imageUrl, fit: BoxFit.cover),
                  ),
                  Container(color: Apptheme.backgroundColor.withOpacity(0.7)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    alignment: const Alignment(0, 0.5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.title,
                          style: Apptheme.introtile,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          item.subtitle,
                          style: Apptheme.introSubtile,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          // PageIndicator
          Container(
            alignment: const Alignment(0, 0.65),
            child: SmoothPageIndicator(
              controller: controller,
              count: itemCount,
              effect: const ExpandingDotsEffect(
                activeDotColor: Apptheme.indicatorActiveColor,
                dotColor: Apptheme.indicatorInactiveColor,
                dotHeight: 5,
                dotWidth: 10,
              ),
            ),
          ),

          // Get Start Button
          Container(
            alignment: const Alignment(0, 0.85),
            child: CustomFilledButton(
              width: 136,
              height: 54,
              color: Apptheme.buttonBackground2Color,
              borderRadius: 16,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: Text('Get Started', style: Apptheme.cardTitleSmall),
            ),
          ),
        ],
      ),
    );
  }
}
