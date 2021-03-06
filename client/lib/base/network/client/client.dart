import 'package:flutterapp/model/bool_result.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'client.g.dart';

@RestApi(baseUrl: "http://192.168.2.102:8080")
abstract class Client {
  factory Client(Dio dio) = _Client;

  /// 登录验证
  @GET("/v1/login")
  Future<BoolResult> login(
      @Query("userId") String userId);
}