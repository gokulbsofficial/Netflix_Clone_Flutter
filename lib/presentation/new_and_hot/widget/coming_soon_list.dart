import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/coming_soon_widget.dart';

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInComingSoon(refresh: true));
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                semanticsLabel: "Loading...",
              ),
            );
          } else if (state.hasError) {
            return const Center(child: Text('Error'));
          } else if (state.comingsoonList.isEmpty) {
            return const Center(child: Text('Empty'));
          } else {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: state.comingsoonList.length,
              itemBuilder: (BuildContext context, index) {
                final movie = state.comingsoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                String month = '';
                String date = '';
                try {
                  final _date = DateTime.tryParse(movie.releaseDate!);
                  final formatedDate =
                      DateFormat.yMMMMd('en_US').format(_date!);
                  month = formatedDate.split(' ')[0];
                  date = movie.releaseDate!.split('-')[2];
                } catch (_) {
                  month = 'January';
                  date = '01';
                }

                return ComingSoonWidget(
                  id: movie.id.toString(),
                  month: month,
                  date: date,
                  imageURL: movie.backdropPath != null
                      ? movie.backdropPathURL
                      : movie.posterPathURL,
                  movieOriginalName: movie.originalTitle ?? 'No title',
                  movieName: movie.title ?? 'No title',
                  description: movie.overview ?? 'No description',
                );
              },
            );
          }
        },
      ),
    );
  }
}
