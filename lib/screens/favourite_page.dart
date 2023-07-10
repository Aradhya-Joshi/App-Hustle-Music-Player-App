import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/fav_song_list.dart';
import '../features/audio_player.dart';
import '../features/bottom_nav_bar.dart';
import '../features/drawer_list.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Wrapped widget with a ChangeNotifierProvider widget
    // to listen to changes.

    return ChangeNotifierProvider(
      create: (context) => FavSongData(),
      child: SafeArea(
        child: Scaffold(
          drawer: const Drawer(
            child: DrawerList(),
          ),
          bottomNavigationBar: const BottonNavBar(),
          appBar: AppBar(
            title: const Text("Favourite Songs "),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.01,
              vertical: MediaQuery.of(context).size.height * 0.01,
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink,
            child: Consumer<FavSongData>(
              builder: (context, favSongData, child) {
                return favSongData.favsongs.isEmpty
                    ? Text(
                        'The favourite song list is empty.\nPlease add favourite songs by tapping the heart button.',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    : ListView.builder(
                        itemCount: favSongData.favsongCount,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: const Stack(
                              children: [
                                Icon(Icons.favorite, color: Colors.white),
                                Icon(Icons.play_arrow, color: Colors.red),
                              ],
                            ),
                            title: Text(favSongData.favsongs[index]),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    const AudioPlayerWidget();
                                  },
                                  icon: const Icon(Icons.play_arrow),
                                ),
                                IconButton(
                                  onPressed: () {
                                    // Used Provider.of to access my model class
                                    // and call its methods for adding and removing songs from the list.

                                    Provider.of<FavSongData>(context,
                                            listen: false)
                                        .removeFavSong(index);
                                  },
                                  icon: const Stack(
                                    children: [
                                      Icon(Icons.favorite),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
