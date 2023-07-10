import 'package:app_hustle_music_player_app/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/fav_song_list.dart';
import '../components/song_list.dart';
import '../features/bottom_nav_bar.dart';
import '../features/drawer_list.dart';
import '../features/song_list_displayer.dart';

// Used if custom drawer button is used.
// import '../components/drawer_pull_button.dart';

// Can Provide a constant list of song names.

//const List<String> items =
// ['Song 1', 'Song 2', 'Song 3', 'Song 4', 'Song 5'];

// Used my favourite song list.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SongData songData = SongData();

  final FavSongData favsongData = FavSongData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Songs "),
        ),
        drawer: const Drawer(
          child: DrawerList(),
        ),

        // Used Stack to overlay the Custom Drawer Button
        // on the Scaffold body(Center Text here).

        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchPage()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/img1.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SearchPage()),
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.1,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/img2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchPage()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.01,
                        right: MediaQuery.of(context).size.width * 0.01,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/img3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SearchPage()),
                                );
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.1,
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/img4.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Can use my own custom drawer button like this.

            // Positioned(
            //   top: 5.0,
            //   left: -15.0,
            //   child:
            //       // Used my own Custom Widget for Button also.
            //
            //       Builder(
            //     builder: (context) => DrawerPullButton(
            //       icon: Icons.arrow_forward_ios,
            //       onPressed: () {
            //         Scaffold.of(context).openDrawer();
            //       },
            //     ),
            //   ),
            // ),

            // Can use Default Flutter Widget for Drawer Button also.

            // DrawerButton(
            //   style: ButtonStyle(
            //     iconSize: MaterialStateProperty.resolveWith<double?>(
            //           (Set<MaterialState> states) {
            //         return 50.0;
            //       },
            //     ),
            //   ),
            // ),

            // Kept Centre as removing it will hinder the position of
            // the below Positioned widget also.

            Center(
              child: Consumer<BottomNavigationBarProvider>(
                builder: (context, selectedIndex, child) {
                  return const Text(' ');
                },
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              bottom: 0,
              left: 0,
              right: 0,
              child: ListView.builder(
                itemCount: songData.songCount,
                itemBuilder: (BuildContext context, int index) {
                  // Passing each song title to the MySongListItem
                  // as string to make a new list item.

                  return MySongListItem(song: songData.songs[index]);
                },
              ),
            ),
          ],
        ),

        bottomNavigationBar: const BottonNavBar(),
      ),
    );
  }
}

// Made a class to set state and notify listeners.

// @override
// Widget build(BuildContext context) {
//   return Consumer<BottomNavigationBarProvider>(
//     builder: (context, selectedIndex, child) {
//       return Text('Current index: ${selectedIndex.currentIndex}');
//     },
//   );
// }
