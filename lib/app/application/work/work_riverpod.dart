import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tkmonkey_web/app/application/top_level_provider.dart';

import 'package:tkmonkey_web/app/infrastructure/tkmonkey_repository.dart';

import 'work_state.dart';

class WorkNotifier extends StateNotifier<WorkRiverpodState> {
  WorkNotifier(this.repository) : super(WorkRiverpodState.initial());

  final TKMonkeyRepository repository;

  void getWorkList() {}

  WorkRiverpodState get currentState => state;
}

final workProvider = StateNotifierProvider.autoDispose<WorkNotifier>(
  (ref) => WorkNotifier(ref.read(tkmRepositoryProvider)),
);
