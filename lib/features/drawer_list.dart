import 'package:app_hustle_music_player_app/screens/dev_page.dart';
import 'package:app_hustle_music_player_app/screens/favourite_page.dart';
import 'package:app_hustle_music_player_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.zero,

      children: <Widget>[

        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: Icon(
            Icons.music_note,
            size: MediaQuery.of(context).size.height * 0.2,
          ),
        ),

        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomePage()),
            );
          },
        ),

        ListTile(
          title: const Text('Favourite'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FavouritePage()),
            );
          },
        ),

        ListTile(
          title: const Text('Artist'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const DevPage()),
            );
          },
        ),

        ListTile(
          title: const Text('About Us'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const DevPage()),
            );
          },
        ),


      ],
    );
  }
}
