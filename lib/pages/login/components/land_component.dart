// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_day_and_night_animation_ui/size_config.dart';

class LandComponent extends StatelessWidget {
  const LandComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 1),
      left: 0,
      right: 0,
      bottom: getProportionateScreenWidth(-65),
      child: Image.asset(
        "assets/images/land_tree_light.png",
        height: getProportionateScreenHeight(430),
        fit: BoxFit.cover,
      ),
    );
  }
}
