import 'package:burak_imdat_bloc/feature/home/view/home_view.dart';
import 'package:burak_imdat_bloc/feature/home/view_model/album_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AlbumCubit()..getAlbums(),
        child: HomeView(),
      ),
    );
  }
}
