import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const ImageContainer({
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10), // Spacing between images
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
