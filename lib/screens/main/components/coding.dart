import 'package:flutter/material.dart';
import 'package:sayyoralar/components/AnimatedCircularProgressIndicator.dart';
import 'package:sayyoralar/constants.dart';

class AndroidCoding extends StatelessWidget {
  const AndroidCoding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text(
              'Languages, For Native Android',
              style: Theme.of(context).textTheme.subtitle2,
            )),
        AnimatedLinearProgressIndicator(
          percentage: 0.89,
          label: 'Java',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: 'Xml',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Firebase',
        ),
      ],
    );
  }
}

class WebCoding extends StatelessWidget {
  const WebCoding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text(
              'Languages, For Web Dev',
              style: Theme.of(context).textTheme.subtitle2,
            )),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: 'Html',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: 'Css',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: 'Javascript',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: 'MySQli',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: 'PHP',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.2,
          label: 'Laravel',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Wordpress',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Elementor',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: 'Shopify',
        ),
      ],
    );
  }
}

class PortfolioCoding extends StatelessWidget {
  const PortfolioCoding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text(
              'Languages, For Cross-Platform ',
              style: Theme.of(context).textTheme.subtitle2,
            )),
        AnimatedLinearProgressIndicator(
          percentage: 1,
          label: 'Flutter',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: 'Dart',
        ),
      ],
    );
  }
}