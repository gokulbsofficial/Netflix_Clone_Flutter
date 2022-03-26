import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
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
          child: Ink(
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
    );
  }
}
