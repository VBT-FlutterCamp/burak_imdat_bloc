import 'package:burak_imdat_bloc/feature/home/model/album_model.dart';
import 'package:burak_imdat_bloc/feature/home/service/abstract/IAlbum_service.dart';
import 'package:vexana/src/interface/INetworkService.dart';
import 'package:vexana/vexana.dart';

class AlbumManager extends IAlbumService {
  AlbumManager(INetworkManager manager) : super(manager);

  @override
  Future<List<AlbumModel>?> getAlbums() async {
    final response = await manager.send<AlbumModel, List<AlbumModel>>('/albums', parseModel: AlbumModel(), method: RequestType.GET);
    return response.data;
  }
}
