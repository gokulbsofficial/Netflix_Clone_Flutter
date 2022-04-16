import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "FEB",
                  style: TextStyle(
                    fontSize: 16,
                    color: kGreyColor,
                  ),
                ),
                Text(
                  "29",
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 3.5,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 430,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VideoWidget(),
                kHeight20,
                Row(
                  children: [
                    const Text(
                      "TALL GIRL 2",
                      style: TextStyle(
                        fontSize: 35,
                        letterSpacing: -3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        CustomButtonWidget(
                          title: 'Remain me',
                          icon: Icons.alarm,
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth,
                        CustomButtonWidget(
                          title: 'Info',
                          icon: Icons.info,
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth20,
                      ],
                    )
                  ],
                ),
                kHeight5,
                const Text("Coming on Friday"),
                kHeight,
                const Text(
                  "Tall Girl 2",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight,
                const Text(
                  "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence -- and her relationship -- into a tailspin.",
                  style: TextStyle(color: kGreyColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
