import 'package:dio/dio.dart';

class DataService {
  final String _url = "http://localhost:8000/api/";

  Dio dio = Dio();

  loginService(String username, String password) async {
    final Response = await dio.post(_url + 'login', data: {
      'username': username,
      'password': password,
    });
    return Response.data;
  }
}
