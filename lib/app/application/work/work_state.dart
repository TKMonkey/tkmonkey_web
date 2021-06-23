import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tkmonkey_web/app/domain/work_model.dart';

part 'work_state.freezed.dart';

@freezed
class WorkState with _$WorkState {
  const factory WorkState({
    required List<WorkModel> list,
    required bool loading,
    required bool showError,
  }) = _WorkState;

  factory WorkState.initial() => const WorkState(
        list: [],
        loading: false,
        showError: false,
      );
}
