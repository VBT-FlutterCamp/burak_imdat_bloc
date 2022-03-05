import 'package:bloc/bloc.dart';
import 'package:burak_imdat_bloc/core%20/network/network_constant.dart';
import 'package:burak_imdat_bloc/feature/home/service/abstract/IAlbum_service.dart';
import 'package:burak_imdat_bloc/feature/home/service/concrete/album_manager.dart';
import 'package:burak_imdat_bloc/feature/home/view_model/album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  AlbumCubit({IAlbumService? service})
      : _service = service ?? AlbumManager(NetworkConstant.instance.networkManager),
        super(AlbumIntial());

  final IAlbumService _service;

  Future<void> getAlbums() async {
    emit(AlbumLoading());
    final data = await _service.getAlbums();
    emit(AlbumSuccess(data));
  }
}
