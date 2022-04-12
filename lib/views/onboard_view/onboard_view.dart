import 'package:flutter/material.dart';
import 'package:simplified_ninja/config/constants.dart';
import 'package:simplified_ninja/views/home_view/home_view.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);
  static const kRouteName = "/onboard";

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kAccentColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: _size.width * 0.35,
                    ),
                    Text(
                      kAppName.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeView.kRouteName);
                  },
                  child: const Text("EXPLORE NOW"),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    onPrimary: kWhiteColor,
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("LOGIN/REGISTER HERE"),
                  style: TextButton.styleFrom(
                    primary: kPrimaryColor,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
