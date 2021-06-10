import 'package:flutter/material.dart';
import 'package:tkmonkey_web/config/values/values.dart';

const _email = 'me@piperlab.co';
const _linkedin = '@jamescardona11';

class DescriptionHomeWidget extends StatelessWidget {
  const DescriptionHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi!, This is a simple Portfolio',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            _linkedin,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: kPrimaryColor),
          ),
          Text(
            'Entrepreneur and developer, looking for new challenges and new experiences.\nA happy mobile app developer with 11 years of work experience.',
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  height: 1.5,
                ),
          ),
          kSpaceBigVertical,
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email:', style: Theme.of(context).textTheme.headline1),
                  Text(_email, style: Theme.of(context).textTheme.headline2)
                ],
              ),
              kSpaceSmallHorizontal,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Linkedin:',
                      style: Theme.of(context).textTheme.headline1),
                  Text(_linkedin, style: Theme.of(context).textTheme.headline2)
                ],
              ),
            ],
          ),
          kSpaceBigVertical,
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: kYellowColor),
                child: const Text('Download CV'),
              ),
              kSpaceSmallHorizontal,
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: kBlackColor),
                child: const Text('Hire Me Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
