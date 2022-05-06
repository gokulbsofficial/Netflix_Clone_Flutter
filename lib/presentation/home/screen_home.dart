import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/home/home_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/background_card.dart';
import 'package:netflix_clone/presentation/home/widget/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(
        const LoadHomeData(),
      );
    });
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<HomeBloc>(context).add(
                      const LoadHomeData(refresh: true),
                    );
                  },
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text('Error while fetching'),
                        );
                      } else if (state.trendingNowList.isEmpty) {
                        return const Center(
                          child: Text('Empty'),
                        );
                      } else {
                        final _pastYearMovieImagesList = state.pastYearList
                            .map((m) => m.posterPathURL)
                            .toList();
                        final _trendingNowImagesList = state.trendingNowList
                            .map((m) => m.posterPathURL)
                            .toList();
                        final _top10TVShowImagesList = state.top10TVShowList
                            .map((m) => m.posterPathURL)
                            .toList();
                        final _tenseDramaImagesList = state.tenseDramaList
                            .map((m) => m.posterPathURL)
                            .toList();
                        final _southIndianMovieImagesList = state
                            .southIndianMovieList
                            .map((m) => m.posterPathURL)
                            .toList();

                        return ListView(
                          children: [
                            const BackgroundCard(),
                            MainTitleCard(
                              title: "Released in the past year",
                              movieImageURLs:
                                  _pastYearMovieImagesList.sublist(0, 10),
                            ),
                            kHeight,
                            MainTitleCard(
                              title: "Trending Now",
                              movieImageURLs:
                                  _trendingNowImagesList.sublist(0, 10),
                            ),
                            kHeight,
                            NumberTitleCard(
                              title: "Top 10 TV Shows In India Today",
                              tvShowsImageURLs:
                                  _top10TVShowImagesList.sublist(0, 10),
                            ),
                            kHeight,
                            MainTitleCard(
                              title: "Tense Dramas",
                              movieImageURLs:
                                  _tenseDramaImagesList.sublist(0, 10),
                            ),
                            kHeight,
                            MainTitleCard(
                              title: "South Indian Cinema",
                              movieImageURLs:
                                  _southIndianMovieImagesList.sublist(0, 10),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png",
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    print('Cast clicked');
                                  },
                                  icon: const Icon(
                                    Icons.cast,
                                    size: 30,
                                    color: kWhiteColor,
                                  ),
                                ),
                                kWidth,
                                InkWell(
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  onTap: () {
                                    print('Profile Clicked');
                                  },
                                ),
                                kWidth
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Movies",
                                  style: kHomeTitleText,
                                ),
                                Text(
                                  "Categories",
                                  style: kHomeTitleText,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : kHeight,
              ],
            ),
          );
        },
      ),
    );
  }
}
