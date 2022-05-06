import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/coming_soon_list.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/everyone_watching_list.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
                child: Ink(
                  width: 30,
                  height: 20,
                  color: Colors.blue,
                ),
                onTap: () {
                  print('Profile Clicked');
                },
              ),
              kWidth
            ],
            bottom: TabBar(
                labelColor: kBlackColor,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelColor: kWhiteColor,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: kRadius30,
                ),
                tabs: const [
                  Tab(text: "🍿 Coming Soon"),
                  Tab(text: "👀 Everyone's Watching")
                ]),
          ),
        ),
        body: const TabBarView(children: [
          ComingSoonList(
            key: Key('coming_soon'),
          ),
          EveryoneWatchingList(
            key: Key('everyone_watching'),
          ),
        ]),
      ),
    );
  }
}
