import 'package:flutter/material.dart';

class AnimatedAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double _preferredHeight = 90.0;

  const AnimatedAppBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedAppBarState createState() => _AnimatedAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(_preferredHeight);
}

class _AnimatedAppBarState extends State<AnimatedAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 180));

    _rotateAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);

    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.only(top: 10.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            FittedBox(
              fit: BoxFit.fill,
              child: ClipRect(
                child: Align(
                  heightFactor: 0.28,
                  alignment: Alignment.topCenter,
                  child: RotationTransition(
                    turns: _rotateAnimation,
                    child: Image.asset("assets/img/earth.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
