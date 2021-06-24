import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/application/top_level_provider.dart';

import 'package:tkmonkey_web/app/domain/i_tkmonkey_repository.dart';
import 'package:tkmonkey_web/app/domain/work_model.dart';

class TKMonkeyRepository implements ITKMonkeyRepository {
  final Reader _read;

  TKMonkeyRepository(this._read);

  static const String _baseUrl = 'https://api.notion.com/v1/';

  @override
  Future<Option<List<WorkModel>>> requestWorkFronNotion() async {
    @override
    final url =
        '${_baseUrl}databases/${dotenv.env['NOTION_DB_PROJECTS_ID']}/query';

    try {
      final response = await _read(dioProvider).get<Map<String, dynamic>>(
        url,
        options: Options(
          headers: {
            'Authorization': 'Bearer ${dotenv.env['NOTION_API_KEY']}',
            'Notion-Version': '2021-05-13',
          },
        ),
      );

      if (response.statusCode != 200) {
        return none();
      }

      _convertResponseToList(response.data!);
    } catch (_) {
      //error
    }

    return none();
  }

  List<WorkModel> _convertResponseToList(Map<String, dynamic> response) {
    print(response);

    WorkModel(
      name: '',
      description: '',
      cover: '',
      category: '',
      link: '',
    );
    return [];
  }
}
