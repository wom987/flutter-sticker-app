import 'package:stickerapp/utils/menu_widget.dart';
import 'package:flutter/material.dart';
//import 'package:drawermenu/models/menu_item.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.greenAccent,
      title: const Text("HomePage"),
      leading: const MenuWidget(),
      ),
  );
}