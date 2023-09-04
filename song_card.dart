import 'package:flutter/material.dart';

import 'album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;

  const SongCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        child: Column(
          children: [
            Image(
              image: image,
              width: 150,
              height: 150,
            ),
            SizedBox(height:5),
            Text(
              "AP Dhillon, Gurinder Gill, Drake, Justin Beiber,Taylor Swift",
              style: TextStyle(color: Colors.grey,fontFamily: 'Gotham'),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}