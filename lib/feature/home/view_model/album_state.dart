import 'package:burak_imdat_bloc/feature/home/model/album_model.dart';

abstract class AlbumState {
  AlbumState();
}

class AlbumLoading extends AlbumState {
  AlbumLoading();
}

class AlbumIntial extends AlbumState {
  AlbumIntial();
}

class AlbumSuccess extends AlbumState {
  List<AlbumModel>? data;
  AlbumSuccess(this.data);
}

class AlbumError extends AlbumState {
  String? error;
  AlbumError(this.error);
}
