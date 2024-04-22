import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/me.jpg',),
            ),
            Spacer(),
            Text('Ali Umer', style: Theme.of(context).textTheme.subtitle2,),
            Text('Mobile Application Developer', style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5
            ),textAlign: TextAlign.center,
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}