import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoListItemWidget extends StatelessWidget {
  final int index;
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Side
                CircleAvatar(
                  radius: 26,
                  backgroundColor: kBlackColor.withOpacity(0.7),
                  child: IconButton(
                    onPressed: () {
                      print("Mute Buttom pressed");
                    },
                    icon: const Icon(
                      Icons.volume_off_rounded,
                      color: kWhiteColor,
                      size: 30,
                    ),
                    color: kWhiteColor,
                  ),
                ),

                // Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://image.tmdb.org/t/p/w440_and_h660_face/8c4a8kE7PizaGQQnditMmI1xbRp.jpg'),
                      ),
                    ),
                    VideoActionsWidgets(
                      icon: Icons.emoji_emotions,
                      title: 'LOL',
                    ),
                    VideoActionsWidgets(
                      icon: Icons.add,
                      title: 'My List',
                    ),
                    VideoActionsWidgets(
                      icon: Icons.share,
                      title: 'Share',
                    ),
                    VideoActionsWidgets(
                      icon: Icons.play_arrow,
                      title: 'Play',
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidgets extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidgets({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 28,
          ),
          Text(title,
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}
