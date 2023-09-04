

import 'package:flutter/material.dart';
import 'package:spotify/Home.dart';
import 'album_card.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;

  const AlbumView({Key? key,required this.image}) : super(key: key);
  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitalHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitalHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        print(scrollController.offset);
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.brown,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: Offset(0, 10),
                          blurRadius: 32,
                          spreadRadius: 16,
                        )
                      ],
                    ),
                    child: Image(
                      image: widget.image,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 220,
                ),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 10),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "All that's viral,stream now!",
                                  style: TextStyle(color: Colors.grey,fontFamily: 'Gotham',fontSize: 12),

                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/logo.png'),
                                      width: 18,
                                      height: 18,
                                    ),
                                    SizedBox(width: 8),
                                    Text("Spotify",style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Gotham'),)
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "110,811 likes - 3h 54m",
                                  style: TextStyle(color: Colors.grey,fontFamily: 'Gotham',fontSize: 12,),
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite_border_outlined),
                                        SizedBox(width: 16),
                                        SizedBox(width: 16),
                                        Icon(Icons.arrow_circle_down),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_vert_sharp),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Songs(
                              songname: "9:45",
                              image: AssetImage("assets/album7.jpg"),
                              artistname: "Prabh Singh,Jay Trak",
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Songs(
                              songname: "Wo Noor",
                              image: AssetImage("assets/album11.jpg"),
                              artistname: "AP Dhillon",
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Songs(
                              songname: "California Love",
                              image: AssetImage("assets/album12.jpg"),
                              artistname: "Gur Sindhu",
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Songs(
                              songname: "Sleepless",
                              image: AssetImage("assets/album13.jpg"),
                              artistname: "AP Dhillon",
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        SizedBox(height: 20,),

                        Text(
                          "You might also like",
                          style: TextStyle(fontSize: 20,fontFamily: 'Gotham'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: 174,
                                label: "Daylight",
                                image: AssetImage("assets/album3.jpg"),
                              ),
                              AlbumCard(
                                size: 174,
                                label: "Talwiinder",
                                image: AssetImage("assets/album5.jpg"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: 174,
                                label: "Phonk",
                                image: AssetImage("assets/album6.jpg"),
                              ),
                              AlbumCard(
                                size: 174,
                                label: "Lunch Break",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: 174,
                                label: "Get Turnt",
                                image: AssetImage("assets/album10.jpg"),
                              ),
                              AlbumCard(
                                size: 174,
                                label: "Get Turnt",
                                image: AssetImage("assets/album4.jpg"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // App bar
          Positioned(
              child: Container(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  color: showTopBar
                      ? Color(0xFFC61855).withOpacity(1)
                      : Color(0xFFC61855).withOpacity(0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SafeArea(
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_sharp,
                                size: 25,
                              ),
                            ),
                          ),
                          AnimatedOpacity(
                            duration: Duration(milliseconds: 250),
                            opacity: showTopBar ? 1 : 0,
                            child: Text(
                              "Punjabi 101",
                              style: TextStyle(fontFamily: 'Gotham',fontSize: 20,),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom:
                            80 - containerHeight.clamp(120.0, double.infinity),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  width: 64,
                                  height: 64,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff14D860),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.black,
                                    size: 38,
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey,
                                  ),
                                  child: Icon(
                                    Icons.shuffle,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
class Songs extends StatelessWidget {
  final AssetImage image;
  final String songname;
  final String artistname;
  const Songs({
    Key? key,
    required this.image,
    required this.songname,
    required this.artistname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 55,
              width: 55,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 10),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(songname,style: TextStyle(fontFamily: 'Gotham',fontSize:18),),
                SizedBox(height: 3,),
                Text(artistname,style: TextStyle(color: Colors.grey,fontFamily: 'Gotham',fontSize: 12,)),
              ],
            )
          ],
        ),
      ),
    );
  }
}