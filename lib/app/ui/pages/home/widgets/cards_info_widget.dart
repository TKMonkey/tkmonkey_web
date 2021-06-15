import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class CardsInfoWidget extends StatelessWidget {
  const CardsInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: context.heightPct(10),
      child: SizedBox(
        width: context.widthPx,
        child: ResponsiveBuilder(
          builder: (ctx, info) {
            if (info.screenSize.width < 850) {
              return Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _cards,
                ),
              );
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _cards,
            );
          },
        ),
      ),
    );
  }

  List<Widget> get _cards => const [
        _CardHomePage(
          title: 'Mobile Developer',
          subTitle: 'Flutter, Android and iOS Native',
        ),
        _CardHomePage(
          title: 'O.S.O',
          subTitle: 'We love open source',
        ),
        _CardHomePage(
          title: 'Open to projects',
          subTitle: 'Contact to us',
        ),
      ];
}

class _CardHomePage extends StatelessWidget {
  final String title, subTitle;

  const _CardHomePage({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: kCreamColor,
      child: Container(
        height: 60,
        width: context.widthPx < 450 ? context.widthPx : 230,
        margin: const EdgeInsets.symmetric(horizontal: kSpaceMedium),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: kGrayColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.done,
                color: kCreamColor,
              ),
            ),
            kSpaceMediumHorizontal,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
