import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simplified_ninja/providers/posts_providers.dart';
import 'package:simplified_ninja/views/onboard_view/onboard_view.dart';
import '../config/constants.dart';
import './home_view/home_view.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PostsProvider(),
        ),
      ],
      child: MaterialApp(
        title: kAppName,
        color: kAccentColor,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          primaryColor: kPrimaryColor,
          colorScheme: ColorScheme.fromSwatch(accentColor: kAccentColor),
        ),
        initialRoute: OnboardView.kRouteName,
        routes: {
          HomeView.kRouteName: (_) => const HomeView(),
          OnboardView.kRouteName: (_) => const OnboardView(),
        },
      ),
    );
  }
}
