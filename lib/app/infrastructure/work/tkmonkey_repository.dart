import 'package:injectable/injectable.dart';
import 'package:tkmonkey_web/app/domain/i_tkmonkey_repository.dart';
import 'package:tkmonkey_web/app/domain/work_model.dart';

import 'datasource/tkmonkey_datasource_remote.dart';

@LazySingleton(as: ITKMonkeyRepository)
class TKMonkeyRepository implements ITKMonkeyRepository {
  final TKMDatasourceRemote dataSource;

  TKMonkeyRepository(this.dataSource);

  @override
  Future<WorkModel> requestWorkFronNotion() async {
    final response = await dataSource.getWorkFromNotion();

    return WorkModel(
      name: '',
      description: '',
      cover: '',
      category: '',
      link: '',
    );
  }
}
