import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'album_model.g.dart';

@JsonSerializable()
class AlbumModel extends INetworkModel {
  final int? userId;
  final int? id;
  final String? title;

  AlbumModel({
    this.userId,
    this.id,
    this.title,
  });

  @override
  fromJson(Map<String, dynamic> json) => _$AlbumModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumModelToJson(this);
}


// {
//     "userId": 1,
//     "id": 1,
//     "title": "quidem molestiae enim"
//   },
