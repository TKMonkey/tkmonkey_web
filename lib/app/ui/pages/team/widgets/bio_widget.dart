import 'package:flutter/material.dart';
import 'package:argo/argo.dart';

class BioWidget extends StatelessWidget {
  const BioWidget({
    Key? key,
    required this.bio,
  }) : super(key: key);

  final String bio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        bio,
        style: context.textTheme.subtitle2,
      ),
    );
  }
}
