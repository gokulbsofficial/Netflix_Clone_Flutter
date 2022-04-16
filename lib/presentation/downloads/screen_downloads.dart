import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetList = [
    const SectionOne(),
    SectionTwo(),
    const SectionThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(
          height: 22,
        ),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _SmartDownloads();
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width - 20,
              height: size.width - 20,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.39,
                          backgroundColor: Colors.grey.withOpacity(0.5),
                        ),
                        DownloadsImageWidget(
                          image: state.downloads.isNotEmpty
                              ? '$kImageBaseURL${state.downloads[1].posterPath}'
                              : "",
                          margin: const EdgeInsets.only(left: 170, top: 49),
                          angle: 24,
                          size: Size(size.width * 0.35, size.width * 0.54),
                        ),
                        DownloadsImageWidget(
                          image: state.downloads.isNotEmpty
                              ? '$kImageBaseURL${state.downloads[2].posterPath}'
                              : "",
                          margin: const EdgeInsets.only(right: 170, top: 49),
                          angle: -24,
                          size: Size(size.width * 0.35, size.width * 0.54),
                        ),
                        DownloadsImageWidget(
                          radius: 5,
                          image: state.downloads.isNotEmpty
                              ? '$kImageBaseURL${state.downloads[0].posterPath}'
                              : "",
                          margin: const EdgeInsets.only(bottom: 35, top: 50),
                          size: Size(size.width * 0.4, size.width * 0.6),
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {
              print('Setup button clicked');
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: kButtonColorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {
            print('Download button clicked');
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.image,
    required this.margin,
    required this.size,
    this.angle = 0,
    this.radius = 10,
  }) : super(key: key);

  final double angle;
  final double radius;
  final EdgeInsets margin;
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  image.isNotEmpty ? image : kNetflixImage,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
