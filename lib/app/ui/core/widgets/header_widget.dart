import 'package:argo/argo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/application/header_items_state.dart';
import 'package:tkmonkey_web/app/ui/core/uimodels/header_item_uim.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class HeaderContainerWidget extends StatelessWidget {
  const HeaderContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: buildAppBar(context),
    );
  }

  Widget buildAppBar(BuildContext context) =>
      ResponsiveWrapper.isMobile(context)
          ? _HeaderForSmallScreenWidget()
          : _HeaderForNoSmallScreenWidget();
}

class _HeaderForSmallScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kSizeHeaderBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('text'),
    );
  }
}

class _HeaderForNoSmallScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MenuItemList();
  }
}

class _MenuItemList extends HookWidget {
  const _MenuItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerItems = useProvider(indexHeaderProvider.state);

    return SizedBox(
      height: kSizeHeaderBar,
      child: ListView.builder(
        itemCount: headerItems.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            _HeaderItemWidget(item: headerItems[index]),
      ),
    );
  }
}

class _HeaderItemWidget extends StatelessWidget {
  const _HeaderItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final HeaderItemUIModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(indexHeaderProvider).toggle(item.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            item.title,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: item.isSelected ? kYellowColor : kCreamColor,
                ),
          ),
        ),
      ),
    );
  }
}
