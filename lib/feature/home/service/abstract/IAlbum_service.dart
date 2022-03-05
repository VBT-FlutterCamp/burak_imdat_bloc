import 'package:burak_imdat_bloc/feature/home/model/album_model.dart';
import 'package:vexana/vexana.dart';

abstract class IAlbumService {
  INetworkManager manager;
  IAlbumService(this.manager);

  Future<List<AlbumModel>?> getAlbums();
}
