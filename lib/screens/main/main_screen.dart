import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';
import 'package:sayyoralar/responsive.dart';
import 'package:sayyoralar/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.childrens}) : super(key: key);
  final List<Widget> childrens;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(flex: 2, child: SideMenu()),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...childrens
                        //our footer
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
