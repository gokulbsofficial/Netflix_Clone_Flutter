import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix_clone/presentation/new_and_hot/widget/everyones_watching_widget.dart';

class EveryoneWatchingList extends StatelessWidget {
  const EveryoneWatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context)
          .add(const LoadDataInEveryoneIsWatching());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotAndNewBloc>(context)
            .add(const LoadDataInEveryoneIsWatching(refresh: true));
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
          } else if (state.everyoneWatchingList.isEmpty) {
            return const Center(child: Text('Empty'));
          } else {
            return ListView.builder(
              itemCount: state.everyoneWatchingList.length,
              itemBuilder: (BuildContext context, index) {
                final tv = state.everyoneWatchingList[index];
                if (tv.id == null) {
                  return const SizedBox();
                }
                return EveryonesWatchingWidget(
                  id: tv.id.toString(),
                  tvName: tv.name ?? 'No name',
                  tvOriginalName: tv.originalName ?? 'No name',
                  description: tv.overview ?? 'No description',
                  imageURL: tv.backdropPath != null
                      ? tv.backdropPathURL
                      : tv.posterPathURL,
                );
              },
            );
          }
        },
      ),
    );
  }
}
