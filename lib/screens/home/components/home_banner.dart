import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';
import 'package:sayyoralar/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
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
              'assets/images/bg.jpeg',
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
                    'Discover My Amazing \nDevelopment Work!',
                    style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white) :
                    Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  if(Responsive.isMobileLarge(context))
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                  MyBuildAnimatedText(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  if(!Responsive.isMobile(context))
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
          if(!Responsive.isMobileLarge(context))JavaCodedText(),
          if(!Responsive.isMobileLarge(context))
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text('FYP '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('Fuel Delivery App',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Seller App', speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Buyer App', speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Fuel Delivery App Web Portfolio',
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText('Overall Work Showcase',
                speed: Duration(milliseconds: 60)),
          ]),
          if(!Responsive.isMobileLarge(context))
          SizedBox(
            width: defaultPadding / 2,
          ),
          if(!Responsive.isMobileLarge(context))
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
        text: 'Flutter',
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
