import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/widgets/image_area.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required this.imageURL,
  }) : super(key: key);
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: ImageArea(
            imageURL: imageURL,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: kBlackColor.withOpacity(0.7),
            child: IconButton(
              onPressed: () {
                print("Mute Buttom pressed");
              },
              icon: const Icon(
                Icons.volume_off_rounded,
                color: kWhiteColor,
                size: 20,
              ),
              color: kWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
