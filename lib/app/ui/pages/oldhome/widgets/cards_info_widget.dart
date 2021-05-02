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
      bottom: 0,
      child: SizedBox(
        width: context.widthPx,
        child: Padding(
          padding: getPaddingMainPages(context),
          child: ResponsiveBuilder(
            builder: (ctx, info) {
              if (info.screenSize.width < 1050) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _cards,
                );
              }

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _cards,
              );
            },
          ),
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
          title: 'App Creator',
          subTitle: 'Create apps for you',
        ),
        _CardHomePage(
          title: 'Freelance',
          subTitle: 'You can hire me now',
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
      child: Container(
        height: 70,
        width: context.widthPx < 450 ? context.widthPx : 250,
        margin: const EdgeInsets.symmetric(horizontal: kSpaceBig),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(color: kGrayColor, shape: BoxShape.circle),
              child: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
            kSpaceSmallHorizontal,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: Theme.of(context).textTheme.subtitle1),
                Text(subTitle, style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
