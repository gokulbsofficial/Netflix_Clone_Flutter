import 'package:flutter/material.dart';
import 'package:netflix_clone/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(child: widget, key: key);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItemWidget extends StatelessWidget {
  final int index;
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    final videoURL = dummyVideoURLs[index % dummyVideoURLs.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(videoURL: videoURL, onStateChanged: (bool) {}),
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
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: posterPath == null
                            ? null
                            : NetworkImage('$kImageBaseURL$posterPath'),
                      ),
                    ),
                    ValueListenableBuilder(
                        valueListenable: likedVideoIdsNotifier,
                        builder: (
                          BuildContext context,
                          Set<int> newLikedListIds,
                          Widget? _,
                        ) {
                          if (newLikedListIds.contains(index)) {
                            return GestureDetector(
                              onTap: () {
                                likedVideoIdsNotifier.value.remove(index);
                                likedVideoIdsNotifier.notifyListeners();
                              },
                              child: const VideoActionsWidgets(
                                icon: Icons.favorite_outline,
                                title: 'Liked',
                                iconColor: Colors.red,
                                textColor: Colors.red,
                              ),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              likedVideoIdsNotifier.value.add(index);
                              likedVideoIdsNotifier.notifyListeners();
                            },
                            child: const VideoActionsWidgets(
                              icon: Icons.emoji_emotions,
                              title: 'LOL',
                            ),
                          );
                        }),
                    ValueListenableBuilder(
                      valueListenable: myListVideoIdsNotifier,
                      builder: (BuildContext context,
                          Set<int> newMyListVideoIds, Widget? _) {
                        if (newMyListVideoIds.contains(index)) {
                          return GestureDetector(
                            onTap: () {
                              myListVideoIdsNotifier.value.remove(index);
                              myListVideoIdsNotifier.notifyListeners();
                            },
                            child: const VideoActionsWidgets(
                              icon: Icons.remove,
                              title: 'My List',
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            myListVideoIdsNotifier.value.add(index);
                            myListVideoIdsNotifier.notifyListeners();
                          },
                          child: const VideoActionsWidgets(
                            icon: Icons.add,
                            title: 'My List',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Share.share('The video link is $videoURL');
                      },
                      child: const VideoActionsWidgets(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                    ),
                    const VideoActionsWidgets(
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
  final Color iconColor;
  final Color textColor;

  const VideoActionsWidgets({
    Key? key,
    required this.icon,
    required this.title,
    this.iconColor = kWhiteColor,
    this.textColor = kWhiteColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 28,
          ),
          Text(title,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
              ))
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoURL;
  final void Function(bool isPlaying) onStateChanged;

  const FastLaughVideoPlayer({
    Key? key,
    required this.videoURL,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoURL);
    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // void pauseVideo() {
    //   _videoPlayerController.pause();
    // }

    // void playVideo() {
    //   _videoPlayerController.play();
    // }

    // void muteVideo() {
    //   _videoPlayerController.setVolume(0);
    // }

    // void unmuteVideo() {
    //   _videoPlayerController.setVolume(1);
    // }

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
