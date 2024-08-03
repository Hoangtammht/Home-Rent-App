import 'package:flutter/material.dart';

class ImageListView extends StatelessWidget {
  final List<String> imagePaths;

  ImageListView({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
            child: Image.asset(
              imagePaths[index],
              height: 300,
            ),
          );
        },
      ),
    );
  }
}
