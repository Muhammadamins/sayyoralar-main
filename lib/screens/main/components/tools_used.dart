import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayyoralar/constants.dart';


class ToolsUsed extends StatelessWidget {
  const ToolsUsed({Key? key,required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(width: defaultPadding / 2,),
          Text(text),
        ],
      ),);
  }
}