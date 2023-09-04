import 'package:flutter/material.dart';
import 'package:spotify/album_view.dart';
import 'package:spotify/song_card.dart';
import 'album_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Colors.green.shade800,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Good evening",
                                style: TextStyle(fontFamily: 'Gotham',fontSize: 22,fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.notifications_none_outlined),
                                  SizedBox(width: 16,),
                                  Icon(Icons.history),
                                  SizedBox(width: 16),
                                  Icon(Icons.settings),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "On Repeat",
                                image: AssetImage("assets/Onrepeat.jpg"),
                              ),
                              SizedBox(width: 6),
                              RowAlbumCard(
                                label: "Talwiinder",
                                image: AssetImage("assets/album1.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Lunch Break",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(width: 6),
                              RowAlbumCard(
                                label: "Eminem",
                                image: AssetImage("assets/album5.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - USA",
                                image: AssetImage("assets/album7.jpg"),
                              ),
                              SizedBox(width: 6),
                              RowAlbumCard(
                                label: "Pop Remix",
                                image: AssetImage("assets/album8.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Played",
                            style: TextStyle(fontFamily: 'Gotham',fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Punjabi",
                            image: AssetImage("assets/album14.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Silent",
                            image: AssetImage("assets/album10.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "AP Dhillon Mix",
                            image: AssetImage("assets/album11.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Power Gaming",
                            image: AssetImage("assets/album1.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: "Top songs - Global",
                            image: AssetImage("assets/album9.jpg"),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Big Hits!",
                            style: TextStyle(fontFamily: 'Gotham',fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album2.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album4.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album1.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Recommended radio",
                            style: TextStyle(fontFamily: 'Gotham',fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album8.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album1.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album10.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  final Function? onTap;
  const RowAlbumCard({
    Key? key,
    this.onTap,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
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
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(4),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image(
                image: image,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8),
              Text(label,style: TextStyle(fontFamily: 'Gotham',fontSize: 12,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}
