import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/header_item_uim.dart';

import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class IndexHeaderState extends StateNotifier<List<HeaderItemUIModel>> {
  IndexHeaderState([List<HeaderItemUIModel>? initialState])
      : super(initialState ?? []);

  void toggle(String id) {
    state = [
      for (final item in state)
        if (item.id == id)
          item.copyWith(isSelected: true)
        else
          item.copyWith(isSelected: false)
    ];
  }

  List<HeaderItemUIModel> get currentState => state;
}

final indexHeaderProvider = StateNotifierProvider<IndexHeaderState>((_) {
  return IndexHeaderState([
    HeaderItemUIModel(
      id: _uuid.v4(),
      title: 'Home',
      route: '/home',
      isSelected: true,
    ),
    HeaderItemUIModel(
      id: _uuid.v4(),
      title: 'Team',
      route: '/team',
    ),
    HeaderItemUIModel(
      id: _uuid.v4(),
      title: 'Work',
      route: '/work',
    ),
    HeaderItemUIModel(
      id: _uuid.v4(),
      title: 'About us',
      route: '/aboutus',
    ),
    HeaderItemUIModel(
      id: _uuid.v4(),
      title: 'Contact us',
      route: '/contactus',
    )
  ]);
});
