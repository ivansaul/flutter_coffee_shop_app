import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final double borderRadius;
  const CustomIconButton({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff232732),
                  Color(0xff0E1118),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            height: height - 5,
            width: width - 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: const LinearGradient(
                colors: [
                  Color(0xff222931),
                  Color(0xff11141B),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(onTap: () {
                Navigator.of(context).pop();
              }, child: child),
            ),
          ),
        ],
      ),
    );
  }
}
