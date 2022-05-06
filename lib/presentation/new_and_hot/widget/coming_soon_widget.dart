import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widget/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String date;
  final String imageURL;
  final String movieName;
  final String movieOriginalName;
  final String description;

  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.date,
    required this.imageURL,
    required this.movieName,
    required this.movieOriginalName,
    required this.description,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        kHeight,
        SizedBox(
          width: 50,
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month.substring(0, 3).toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
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
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(
                imageURL: imageURL,
              ),
              kHeight20,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontSize: 18,
                        // letterSpacing: -5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const CustomButtonWidget(
                    title: 'Remain me',
                    icon: Icons.alarm,
                    iconSize: 20,
                    textSize: 12,
                  ),
                  kWidth,
                  const CustomButtonWidget(
                    title: 'Info',
                    icon: Icons.info,
                    iconSize: 20,
                    textSize: 12,
                  ),
                  kWidth20,
                ],
              ),
              kHeight5,
              Text("Coming on $date $month"),
              kHeight,
              Text(
                movieOriginalName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight,
              Text(
                description,
                maxLines: 4,
                style: const TextStyle(color: kGreyColor),
              ),
              description.length > 20 ? kHeight : kHeight5,
            ],
          ),
        ),
      ],
    );
  }
}
