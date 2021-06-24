import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tkmonkey_web/app/domain/work_model.dart';

part 'work_state.freezed.dart';

@freezed
class WorkRiverpodState with _$WorkRiverpodState {
  const factory WorkRiverpodState({
    required List<WorkModel> list,
    required bool loading,
    required bool showError,
  }) = _WorkRiverpodState;

  factory WorkRiverpodState.initial() => const WorkRiverpodState(
        list: [],
        loading: false,
        showError: false,
      );
}
