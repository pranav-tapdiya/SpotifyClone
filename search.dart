import 'package:flutter/material.dart';
import 'package:spotify/searchcard.dart';

class SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text('Search',style: TextStyle(fontFamily: 'Gotham',fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.00,right: 10.00),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search_sharp,color: Colors.grey,),
                  contentPadding: const EdgeInsets.all(20),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Artists,songs,or podcasts',
                  hintStyle: TextStyle(fontSize: 15,fontFamily: 'Gotham',fontWeight: FontWeight.w300,color: Colors.blueGrey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20.00),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Text('Browse all',style: TextStyle(fontFamily: 'Gotham',fontSize: 20),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 20.00),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [
                  BrowseCard(
                      title: 'Podcasts',
                      color1: '#BA9CE4',
                  ),
                  BrowseCard(
                      title: 'Live Events',
                      color1: '#FF886A',
                  ),
                  BrowseCard(
                      title: 'Made for you',
                      color1: '#1DB954',
                  ),
                  BrowseCard(
                      title: 'Hindi',
                      color1: '#675858',
                  ),
                  BrowseCard(
                    title: 'Punjabi',
                    color1: '#b02897',
                  ),
                  BrowseCard(
                    title: 'Party',
                    color1: '#e91429',
                  ),
                  BrowseCard(
                    title: 'Charts',
                    color1: '#7358ff',
                  ),
                  BrowseCard(
                    title: 'New Release',
                    color1: '#777777',
                  ),
                  BrowseCard(
                    title: 'POP',
                    color1: '#BA9CE4',
                  ),
                  BrowseCard(
                    title: 'Charts',
                    color1: '#FF886A',
                  ),
                  BrowseCard(
                    title: 'Discover',
                    color1: '#1DB954',
                  ),
                  BrowseCard(
                    title: 'New Release',
                    color1: '#675858',
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
