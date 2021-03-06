import 'package:flutter/material.dart';
import 'package:argo/argo.dart';
import 'package:tkmonkey_web/config/values/values.dart';

class InfoContactWidget extends StatelessWidget {
  const InfoContactWidget._({
    Key? key,
    this.email = true,
  }) : super(key: key);

  factory InfoContactWidget.location() => const InfoContactWidget._();
  factory InfoContactWidget.email() => const InfoContactWidget._(email: false);

  final bool email;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          email ? Icons.email_outlined : Icons.location_on_outlined,
          color: kPrimaryColor,
        ),
        kSpaceLittleHorizontal,
        Text(
          email ? emailTKM : locationTKM,
          style: context.textTheme.headline2!.copyWith(
            color: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
