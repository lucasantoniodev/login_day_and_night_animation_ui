import 'package:flutter/material.dart';
import 'package:login_day_and_night_animation_ui/size_config.dart';

class AnimatedSunComponent extends StatelessWidget {
  const AnimatedSunComponent({
    super.key,
    required this.seconds,
    required this.isFullSun,
  });

  final int seconds;
  final bool isFullSun;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOut,
      duration: Duration(seconds: seconds),
      right: 50,
      left: 50,
      bottom: getProportionateScreenWidth(isFullSun ? 10 : -170),
      // child: SvgPicture.asset("assets/icons/Sun.svg"),
      child: Image.asset(
        "assets/images/Sun.png",
      ),
    );
  }
}
