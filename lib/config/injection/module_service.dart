import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectionModule {
  @lazySingleton
  Dio get dio => Dio();
}
