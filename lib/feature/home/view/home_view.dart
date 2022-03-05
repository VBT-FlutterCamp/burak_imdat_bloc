import 'package:burak_imdat_bloc/feature/home/view_model/album_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../view_model/album_state.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final String title = 'Album List';
  final String initialText = 'Initial State';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<AlbumCubit, AlbumState>(
        builder: (context, state) {
          if (state is AlbumIntial) {
            return Center(
              child: Text(
                initialText,
                style: context.textTheme.headline4,
              ),
            );
          } else if (state is AlbumLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is AlbumSuccess) {
            return ListView.builder(
              itemCount: (state.data ?? []).length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5,
                  child: Padding(
                    padding: context.paddingNormal,
                    child: Text(
                      state.data?[index].title ?? 'Default Title',
                      style: context.textTheme.headline5,
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text((state as AlbumError).error ?? 'Initial Error'));
          }
        },
      ),
    );
  }
}
