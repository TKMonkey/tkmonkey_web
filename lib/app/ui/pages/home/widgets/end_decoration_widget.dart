import 'package:flutter/material.dart';
import 'package:tkmonkey_web/app/ui/core/widgets/points_decoration_widget.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class EndDecorationWidget extends StatelessWidget {
  const EndDecorationWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              width: size / 2,
              height: size / 2,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 25,
            child: Column(
              children: [
                const SizedBox(height: 14),
                Row(
                  children: const [
                    _WrapperPointsWidget(),
                    SizedBox(width: 12),
                    _WrapperPointsWidget(color: kBlackColor),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    _WrapperPointsWidget(),
                    SizedBox(width: 12),
                    _WrapperPointsWidget(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _WrapperPointsWidget extends StatelessWidget {
  const _WrapperPointsWidget({
    Key? key,
    this.color = kPrimaryColor,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return PointsDecorationWidget(
      quantityX: 3,
      quantityY: 3,
      radius: 1.8,
      delta: 12,
      color: color,
      padding: false,
    );
  }
}
