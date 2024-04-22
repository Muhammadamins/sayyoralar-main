import 'package:flutter/material.dart';
import 'package:sayyoralar/components/AnimatedCircularProgressIndicator.dart';
import 'package:sayyoralar/constants.dart';

class Work extends StatelessWidget {
  const Work({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Can Develop',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 1,
                label: 'Native',
              ),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 1,
                label: 'Hybrid',
              ),
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 1,
                label: 'Web',
              ),
            ),
          ],
        )
      ],
    );
  }
}