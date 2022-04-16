import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            kNewAndHotImage1,
            fit: BoxFit.cover,
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
