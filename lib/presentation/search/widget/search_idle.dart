import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/search/widget/search_title.dart';
import 'package:netflix_clone/presentation/widgets/image_area.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        kHeight,
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              BlocProvider.of<SearchBloc>(context)
                  .add(const LoadTopSearch(refresh: true));
            },
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.isError) {
                  return const Center(
                    child: Text('Error while getting data'),
                  );
                } else if (state.idleList.isEmpty) {
                  return const Center(
                    child: Text('List is empty'),
                  );
                }
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final movie = state.idleList[index];
                    return TopSearchItemTile(
                      title: movie.title ?? "No title provided",
                      imageURL: '$kImageBaseURL${movie.backdropPath}',
                      video: movie.video ?? false,
                    );
                  },
                  separatorBuilder: (ctx, index) => kHeight20,
                  itemCount: state.idleList.length,
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.imageURL,
    this.video = false,
  }) : super(key: key);

  final String title;
  final String imageURL;
  final bool video;

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          height: 65,
          width: _screenWidth * 0.35,
          child: ImageArea(
            imageURL: imageURL,
            borderRadius: BorderRadius.circular(4),
            iconSize: 26,
            textSize: 15,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                color: kWhiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            video ? print('Video avilable') : print('Video not available');
          },
          child: const CircleAvatar(
            backgroundColor: kWhiteColor,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: kBlackColor,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
