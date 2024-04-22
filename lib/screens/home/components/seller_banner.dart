import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';

class SellerBanner extends StatelessWidget {
  const SellerBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/f1.png',
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Seller App',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  MyBuildAnimatedText(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: primaryColor),
                      child: Text(
                        'Watch Overview',
                        style: TextStyle(color: darkColor),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          JavaCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text('I Have Build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Seller App',
                speed: Duration(milliseconds: 60)),
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
        ],
      ),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: ' <', children: [
      TextSpan(
        text: 'Xml',
        style: TextStyle(color: primaryColor),
      ),
      TextSpan(text: '> '),
    ]));
  }
}

class JavaCodedText extends StatelessWidget {
  const JavaCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: '<', children: [
      TextSpan(
        text: 'Java',
        style: TextStyle(color: primaryColor),
      ),
      TextSpan(text: '> '),
    ]));
  }
}
