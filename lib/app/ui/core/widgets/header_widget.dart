import 'package:argo/argo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/application/header_items_state.dart';
import 'package:tkmonkey_web/app/ui/core/viewmodels/header_item.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class HeaderContainerWidget extends StatelessWidget {
  const HeaderContainerWidget({
    Key? key,
    this.body = const SizedBox(),
  }) : super(key: key);

  final Widget? body;

  PreferredSizeWidget buildAppBar(BuildContext context) {
    if (ResponsiveWrapper.isMobile(context)) {
      return _HeaderForSmallScreenWidget();
    }
    return _HeaderForNoSmallScreenWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: body,
    );
  }
}

class _HeaderForSmallScreenWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kSizeHeaderBar);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('text'),
    );
  }
}

class _HeaderForNoSmallScreenWidget extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kSizeHeaderBar);

  @override
  Widget build(BuildContext context) {
    return HeaderWidget();
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: kSizeHeaderBar,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      decoration: const BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _LogoName(),
          const Expanded(child: SizedBox()),
          const _MenuItemList(),
        ],
      ),
    );
  }
}

class _LogoName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.imageLogoApp,
          width: 50,
        ),
        RichText(
          text: TextSpan(
              text: 'TheKoding',
              style: Theme.of(context).textTheme.headline3,
              children: [
                TextSpan(
                  text: 'Monkey',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kPrimaryColor),
                )
              ]),
        ),
      ],
    );
  }
}

class _MenuItemList extends HookWidget {
  const _MenuItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerItems = useProvider(headerItemListProvider.state);

    return ListView.builder(
      itemCount: headerItems.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) => _HeaderItemWidget(item: headerItems[index]),
    );
  }
}

class _HeaderItemWidget extends StatelessWidget {
  const _HeaderItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final HeaderItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read(headerItemListProvider).toggle(item.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.title,
              style: Theme.of(context).textTheme.headline2,
            ),
            if (item.isSelected)
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: kYellowColor,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }
}
