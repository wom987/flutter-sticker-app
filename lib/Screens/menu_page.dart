import 'package:flutter/material.dart';
import 'package:stickerapp/models/menu_item.dart';
//? menu items
class MenuItems{
  static const home = MenuItem('Home',Icons.home_rounded);
  static const help = MenuItem('Help',Icons.help);
  static const aboutUs = MenuItem('About Us',Icons.info_outline);
  static const rateUs = MenuItem('Rate Us',Icons.star_border_outlined);
//? creating a list to use them later
  static const all =<MenuItem>[
    home,
    help,
    aboutUs,
    rateUs
  ];
}

class MenuPage extends StatelessWidget {
  //? properties to get the item selected and display it as selected on the drawer menu
  final MenuItem currentItem;
  final ValueChanged<MenuItem> onSelectedItem;
  
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Theme(
    data: ThemeData.dark(), 
    child:Scaffold(
        // menu background color
        backgroundColor: Colors.indigo,
        body: SafeArea(
          // menu container
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Spacer(),
              // mappint the items to display them 
              ...MenuItems.all.map(buildMenuItem).toList(),
              const Spacer(flex: 2),
            ],
          )
        ),
      )
    );
  
  //function that builds menu's items on the screen 
  Widget buildMenuItem(MenuItem item)=>ListTileTheme(

    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black38,
      // validating the current item
      selected: currentItem==item,
      minLeadingWidth: 20,
      // text and icon displayed
      leading: Icon(item.icon),
      title:Text(item.title),
      // onclick action for the menu drawer 
      onTap: ()=>onSelectedItem(item),
    )
  );
}
