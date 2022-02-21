import 'package:stickerapp/utils/constants.dart';
import 'package:stickerapp/utils/menu_widget.dart';
import 'package:flutter/material.dart';
//import 'package:drawermenu/models/menu_item.dart';

class RateUsPage extends StatelessWidget {
  const RateUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent[100],
          title: Text("RateUsPage", style: textThemeDefault.headline2),
          leading: const MenuWidget(),
        ),
      );
}
