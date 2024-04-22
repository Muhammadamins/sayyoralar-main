import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';
import 'package:sayyoralar/screens/main/components/coding.dart';
import 'package:sayyoralar/screens/main/components/my_info.dart';
import 'package:sayyoralar/screens/main/components/social_media.dart';
import 'package:sayyoralar/screens/main/components/team_info.dart';
import 'package:sayyoralar/screens/main/components/tools_used.dart';
import 'package:sayyoralar/screens/main/components/work.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                TeamInfo(
                  name: 'Age',
                  rollNumber: '22',
                ),
                TeamInfo(
                  name: 'Country',
                  rollNumber: 'Pakistan',
                ),
                TeamInfo(
                  name: 'City',
                  rollNumber: 'Daska',
                ),
                Work(),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                AndroidCoding(),
                WebCoding(),
                PortfolioCoding(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
                      child: Text('Tools Used', style: Theme.of(context).textTheme.subtitle2,),),
                    ToolsUsed(text: 'Android Studio'),
                    ToolsUsed(text: 'Git'),
                    ToolsUsed(text: 'Unity'),
                    ToolsUsed(text: 'Php Storm'),
                    ToolsUsed(text: 'Notepad++'),
                  ],
                ),
                FittedBox(
                  child: Row(
                    children: [
                      Text('Social Media',style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color,)),
                      SizedBox(width: defaultPadding / 2,),
                      Icon(Icons.face_outlined),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    SocialMedia(
                      onPress: ()=> _launchURL('https://facebook.com/flutterxtreme'),
                      icon: 'assets/icons/facebook.svg',
                      text: 'Facebook',
                    ),
                    SocialMedia(
                      onPress: ()=> _launchURL('https://instagram.com/flutter_xtreme'),
                      icon: 'assets/icons/insta.svg',
                      text: 'Instagram',
                    ),
                    SocialMedia(
                      onPress: ()=> _launchURL('https://youtube.com/channel/UCKu5WyC31sZzi7PH08Xupfg'),
                      icon: 'assets/icons/youtube.svg',
                      text: 'Youtube',
                    ),
                    SocialMedia(
                      onPress: ()=> _launchURL('https://github.com/alixumer'),
                      icon: 'assets/icons/github.svg',
                      text: 'Github',
                    ),
                    SocialMedia(
                      onPress: (){} ,
                      icon: 'assets/icons/whatsapp.svg',
                      text: '+923000955857',
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}






