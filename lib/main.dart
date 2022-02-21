import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:stickerapp/Screens/about_us_page.dart';
import 'package:stickerapp/Screens/help_page.dart';
import 'package:stickerapp/Screens/rate_us_page.dart';

import 'Screens/menu_page.dart';
import 'Screens/home_page.dart';
import 'models/menu_item.dart';
import 'utils/constants.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //? getting the screen witdh
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      title: dotenv.env['APP_NAME'].toString(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorWhite,
        textTheme: screenWidth < 500 ? textThemeSmall : textThemeDefault,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuItem currentItem = MenuItems.home;

  @override
  // ignore: prefer_const_constructors
  Widget build(BuildContext context) => ZoomDrawer(
        // * screen border radious
        borderRadius: 40,
        // * screen angle
        angle: -5,
        // * it determines the translation for the screen
        slideWidth: MediaQuery.of(context).size.width * 0.7,
        // * shadow allowed to have a color
        showShadow: true,
        // * shadow color
        backgroundColor: Colors.purpleAccent,
        // * drawer styles
        style: DrawerStyle.Style1,
        // ignore: prefer_const_constructors
        // calling the screen selected
        mainScreen: getScreen(),
        // * this builder allows to close the zoom drawer and change the state and send the selected item
        menuScreen: Builder(
            builder: (context) => MenuPage(
                  currentItem: currentItem,
                  onSelectedItem: (item) {
                    setState(() => currentItem = item);
                    ZoomDrawer.of(context)!.close();
                  },
                )),
      );
  // * it displays the current page
  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.home:
        return const HomePage();
      case MenuItems.aboutUs:
        return const AboutUsPage();
      case MenuItems.rateUs:
        return const RateUsPage();
      default:
        return const HelpPage();
    }
  }
}
