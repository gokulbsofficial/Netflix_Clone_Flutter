import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class ImageArea extends StatelessWidget {
  const ImageArea({
    Key? key,
    required this.imageURL,
    this.iconSize = 28,
    this.textSize = 16,
    this.backgroundColor = kImageErrorBackground,
    this.textColor = kWhiteColor,
    this.iconColor = kWhiteColor,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  final String imageURL;
  final double iconSize;
  final Color iconColor;
  final double textSize;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Image.network(
        imageURL,
        fit: BoxFit.cover,
        loadingBuilder: (ctx, child, loadingProcess) {
          if (loadingProcess == null) return child;
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
        errorBuilder: (context, error, stack) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  color: iconColor,
                  size: iconSize,
                ),
                kHeight,
                Text("Whoops!",
                    style: TextStyle(fontSize: textSize, color: textColor)),
              ],
            ),
            color: backgroundColor.withOpacity(0.75),
          );
        },
      ),
    );
  }
}
