import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/image_area.dart';

class MainCard extends StatelessWidget {
  final String imageURL;
  const MainCard({
    Key? key,
    required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 130,
      height: 250,
      child: ImageArea(
        imageURL: imageURL,
        // "https://image.tmdb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
        borderRadius: kRadius10,
      ),
    );
  }
}
