import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

import 'work_state.dart';

class IndexHeaderState extends StateNotifier<WorkState> {
  IndexHeaderState() : super(WorkState.initial());

  WorkState get currentState => state;
}
