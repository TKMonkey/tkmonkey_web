import 'work_model.dart';

abstract class ITKMonkeyRepository {
  Future<WorkModel> requestWorkFronNotion();
}
