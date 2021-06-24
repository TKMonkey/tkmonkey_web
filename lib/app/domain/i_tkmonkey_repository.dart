import 'package:dartz/dartz.dart';

import 'work_model.dart';

abstract class ITKMonkeyRepository {
  Future<Option<List<WorkModel>>> requestWorkFronNotion();
}
