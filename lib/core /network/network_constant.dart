import 'package:vexana/vexana.dart';

class NetworkConstant {
  static NetworkConstant? _instance;
  static NetworkConstant get instance => _instance ??= NetworkConstant._init();
  NetworkConstant._init();
  INetworkManager get networkManager => NetworkManager(options: BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
}
