import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayyoralar/constants.dart';


class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key,required this.text,required this.icon,required this.onPress}) : super(key: key);
  final String text;
  final String icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: TextButton(
        onPressed: onPress,
        child: Row(
          children: [
            SvgPicture.asset(icon, height: 25,),
            SizedBox(width: defaultPadding / 2,),
            Text(text),
          ],
        ),
      ),);
  }
}