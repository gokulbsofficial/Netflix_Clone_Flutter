import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          const Text(
            "Friends",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          const Text(
            "This hit sitcom follows the merry misadventures of six 20-something pais as they navigate the pitfalls of work, life and love in 1990s Manhattan.",
            style: TextStyle(color: kGreyColor),
          ),
          kHeight40,
          const VideoWidget(),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomButtonWidget(
                title: 'Share',
                icon: Icons.share,
                iconSize: 26,
                textSize: 16,
              ),
              kWidth,
              CustomButtonWidget(
                title: 'My List',
                icon: Icons.add,
                iconSize: 28,
                textSize: 16,
              ),
              kWidth,
              CustomButtonWidget(
                title: 'Play',
                icon: Icons.play_arrow,
                iconSize: 28,
                textSize: 16,
              ),
              kWidth
            ],
          ),
        ],
      ),
    );
  }
}
