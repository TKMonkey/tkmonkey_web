import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

abstract class ITKMDatasourceRemote {
  Future<dynamic> getWorkFromNotion();
}

@LazySingleton(as: ITKMDatasourceRemote)
class TKMDatasourceRemote implements ITKMDatasourceRemote {
  final Dio dio;

  static const String _baseUrl = 'https://api.notion.com/v1/';

  TKMDatasourceRemote(this.dio);

  @override
  Future<dynamic> getWorkFromNotion() async {
    final url =
        '${_baseUrl}databases/${dotenv.env['NOTION_DB_PROJECTS_ID']}/query';

    return dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': 'Bearer ${dotenv.env['NOTION_API_KEY']}',
          'Notion-Version': '2021-05-13',
        },
      ),
    );
  }
}
