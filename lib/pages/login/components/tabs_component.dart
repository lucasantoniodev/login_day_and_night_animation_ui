// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_day_and_night_animation_ui/size_config.dart';

class TabsComponent extends StatelessWidget {
  const TabsComponent({
    Key? key,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final Function(int value) onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenHeight! * 0.8,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          indicator: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          // indicatorColor: Colors.white,
          labelColor: Colors.black,
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.white,
          tabs: const [
            Tab(text: "Morning Login"),
            Tab(text: "Night Login"),
          ],
          onTap: onTap,
        ),
      ),
    );
  }
}
