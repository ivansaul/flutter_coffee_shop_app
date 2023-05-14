import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget child;
  final double borderRadius;
  final Color? borderColor;
  final double borderWidth;

  const CustomFilledButton({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.child,
    this.borderRadius = 13,
    this.borderColor,
    this.borderWidth = 2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Material(
        color: color,
        child: InkWell(
          onHover: (value) {},
          onTap: () {},
          child: Container(
            decoration: (borderColor != null)
                ? BoxDecoration(
                    border: Border.all(color: Colors.orange, width: borderWidth),
                    borderRadius: BorderRadius.circular(borderRadius),
                  )
                : null,
            width: width,
            height: height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
              child: Center(child: child),
            ),
          ),
        ),
      ),
    );
  }
}
