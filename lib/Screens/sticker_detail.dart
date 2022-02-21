import 'package:stickerapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stickerapp/models/stickers.dart';

class StickerDetail extends StatelessWidget {
  final Stickers stickerDetail;
  final int index;
  const StickerDetail({
    Key? key,
    required this.stickerDetail,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(stickerDetail.records[index].fields.name,
            style: textThemeDefault.headline2),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(30),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          for (int i = 0;
              i < stickerDetail.records[index].fields.stickers.length;
              i++)
            Image.network(
              stickerDetail.records[index].fields.stickers[i].url,
              width: 90,
              height: 90,
            )
        ],
      ));
}
