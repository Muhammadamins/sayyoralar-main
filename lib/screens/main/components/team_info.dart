import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';

class TeamInfo extends StatelessWidget {
  const TeamInfo({
    Key? key,
    this.name,
    this.rollNumber,
  }) : super(key: key);
  final String? name, rollNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            rollNumber!,
          ),
        ],
      ),
    );
  }
}