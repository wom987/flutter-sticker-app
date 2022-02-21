import 'package:stickerapp/utils/constants.dart';
import 'package:stickerapp/utils/menu_widget.dart';
import 'package:flutter/material.dart';
//import 'package:drawermenu/models/menu_item.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[200],
          title: Text("HelpPage", style: textThemeDefault.headline2),
          leading: const MenuWidget(),
        ),
      );
}
