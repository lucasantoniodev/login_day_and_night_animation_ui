import 'package:flutter/material.dart';
import 'package:login_day_and_night_animation_ui/pages/login/components/animated_sun_component.dart';
import 'package:login_day_and_night_animation_ui/pages/login/components/land_component.dart';
import 'package:login_day_and_night_animation_ui/pages/login/components/rounded_textfield_component.dart';
import 'package:login_day_and_night_animation_ui/pages/login/components/tabs_component.dart';
import 'package:login_day_and_night_animation_ui/pages/login/themes/login_theme.dart';
import 'package:login_day_and_night_animation_ui/size_config.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  DateTime now = DateTime.now();

  bool isFullSun = false;
  bool isDay = true;
  void openApp() async {
    await Future.delayed(const Duration(seconds: 1));
    isFullSun = !isFullSun;

    setState(() {});
  }

  @override
  void initState() {
    openApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth!,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDay
                ? LoginTheme.lightBgColors(isFullSun)
                : LoginTheme.darkBgColors,
          ),
        ),
        child: Stack(
          children: [
            AnimatedSunComponent(
              seconds: 2,
              isFullSun: isFullSun,
            ),
            const LandComponent(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpacing(of: 50),
                    TabsComponent(
                      color: Colors.white,
                      onTap: (value) {
                        if (value == 1) {
                          isFullSun = !isFullSun;
                          isDay = !isDay;
                        } else {
                          isFullSun = !isFullSun;
                          isDay = !isDay;
                        }
                        setState(() {});
                      },
                    ),
                    const VerticalSpacing(),
                    Text(
                      isDay ? "Good Morning" : "Good evening",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    const VerticalSpacing(of: 10),
                    const Text(
                      "Enter your Informations below",
                      style: TextStyle(color: Colors.white),
                    ),
                    const VerticalSpacing(of: 50),
                    const RoundedTextField(
                      icon: Icon(Icons.person, color: Colors.white),
                      labelText: "Email",
                      hintText: "Enter your email address",
                    ),
                    const VerticalSpacing(of: 20),
                    const RoundedTextField(
                      icon: Icon(Icons.key, color: Colors.white),
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
