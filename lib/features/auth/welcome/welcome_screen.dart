import 'package:flutter/material.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/features/auth/login/screens/login_screen.dart';
import 'package:talet_samak/features/auth/signup/signup_screen.dart';
import 'package:talet_samak/features/auth/welcome/widgets/welcome_screen_button.dart';
import 'package:talet_samak/features/home/home_tabs_screen.dart';
import 'package:talet_samak/utils/localization/app_localizations.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void navigateToLoginScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const LoginScreen()),
      );
    }

    void navigateToSignupScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const SignupScreen()),
      );
    }

    void navigateToHomeScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const HomeTabsScreen()),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            height: double.infinity,
            width: double.infinity,
            'assets/images/welcome_screen_background.png',
            fit: BoxFit.fill,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).primaryColor.withOpacity(.21),
                seconderyColor,
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  "eat_with_your_family".tr(context),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 15),
                child: Text(
                  textAlign: TextAlign.center,
                  "feel_warmless".tr(context),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              WelcomeScreenButton(
                title: "get_started".tr(context),
                backgroundColor: Theme.of(context).primaryColor,
                textColor: Colors.white,
                onButtonClicked: navigateToSignupScreen,
              ),
              const SizedBox(
                height: 20,
              ),
              WelcomeScreenButton(
                title: "sign_in".tr(context),
                backgroundColor: Colors.white,
                textColor: textColor,
                onButtonClicked: navigateToLoginScreen,
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: navigateToHomeScreen,
                child: Text(
                  'Continue as a guest',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 73,
              )
            ],
          )
        ],
      ),
    );
  }
}
