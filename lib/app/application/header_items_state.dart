import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tkmonkey_web/app/ui/core/viewmodels/header_item.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class HeaderItemState extends StateNotifier<List<HeaderItem>> {
  HeaderItemState([List<HeaderItem>? initialState]) : super(initialState ?? []);

  void toggle(String id) {
    state = [
      for (final item in state)
        if (item.id == id)
          item.copyWith(isSelected: true)
        else
          item.copyWith(isSelected: false)
    ];
  }

  List<HeaderItem> get currentState => state;
}

final headerItemListProvider = StateNotifierProvider<HeaderItemState>((_) {
  return HeaderItemState([
    HeaderItem(id: _uuid.v4(), title: 'Home', route: '/home', isSelected: true),
    HeaderItem(id: _uuid.v4(), title: 'About Us', route: '/about-us'),
    HeaderItem(id: _uuid.v4(), title: 'Projects', route: '/projects'),
    HeaderItem(id: _uuid.v4(), title: 'Skills', route: '/skills'),
    HeaderItem(id: _uuid.v4(), title: 'Get In Touch', route: '/getintouch')
  ]);
});
