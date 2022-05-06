import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String id;
  final String imageURL;
  final String tvOriginalName;
  final String tvName;
  final String description;

  const EveryonesWatchingWidget({
    Key? key,
    required this.id,
    required this.imageURL,
    required this.tvOriginalName,
    required this.tvName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          Text(
            tvName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight,
          Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: kGreyColor),
          ),
          description.isNotEmpty
              ? description.length > 20
                  ? kHeight20
                  : kHeight
              : const SizedBox(),
          VideoWidget(imageURL: imageURL),
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
