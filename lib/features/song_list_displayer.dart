import 'package:flutter/material.dart';
import '../components/fav_song_list.dart';
//import 'audio_player.dart';
import 'package:audioplayers/audioplayers.dart';

class MySongListItem extends StatefulWidget {
  final String song;

  const MySongListItem({Key? key, required this.song}) : super(key: key);

  @override
  _MySongListItemState createState() => _MySongListItemState();
}

class _MySongListItemState extends State<MySongListItem> {
  bool isFavorite = false;

  final favSongData = FavSongData();

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Stack(
        // Can use this way to put background images of the
        // track behind the play button.

        children: [
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.play_arrow,
            color: Colors.red,
          ),
        ],
      ),
      title: Text(widget.song),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        //const AudioPlayerWidget(assetPath: 'assets/ke_barabar.mp3'),

        IconButton(
          onPressed: () {
            // Play button
            //const AudioPlayerWidget(assetSourcePath: 'assets/ram_siya_ram.mp3');
            //await AudioHelper.playAudio('assets/sample-15s.wav');
            //const AudioPlayerWidget();
            player.play(AssetSource('ke_barabar.mp3'));
            isFavorite = !isFavorite;
          },
          icon: isFavorite
              ? const Icon(Icons.pause)
              : const Icon(Icons.play_arrow),
        ),

        IconButton(
          onPressed: () {
            favSongData.addFavSong(widget.song);

            // songData.addSong(songData.songs[index]);

            setState(() {
              isFavorite = !isFavorite;

              // Didn't use Provider as it was already set and
              // utilised in making the bottom nav bar and
              // I am not allowed to make more than one create attribute
              // for a provider.
              // So used a Stateful Widget to remake the page
              // every time when a item is removed.
            });
          },
          icon: isFavorite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_outline_rounded),
        ),
      ]),
    );
  }

  // void addFavSong(String newSong) {
  //   if (!_favSongs.contains(newSong)) {
  //     _favSongs.add(newSong);
  //     if (kDebugMode) {
  //       print(_favSongs);
  //     }
  //   }
  // }
}

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../components/fav_song_list.dart';
//
//
// final favSongData = FavSongData();
//
// class MySongListItem extends StatelessWidget {
//
//   final String song;
//
//   const MySongListItem({Key? key, required this.song}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => FavSongData(),
//       child: Consumer<FavSongData>(
//         builder: (context, favSongs, child) {
//           return ListTile(
//             leading: const Stack(
//               children: [
//                 Icon(
//                   Icons.favorite,
//                   color: Colors.white,
//                 ),
//                 Icon(
//                   Icons.play_arrow,
//                   color: Colors.red,
//                 ),
//               ],
//             ),
//             title: Text(song),
//             trailing: Row(mainAxisSize: MainAxisSize.min, children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.play_arrow),
//               ),
//               IconButton(
//                 onPressed: () {
//                   favSongs.addFavSong(song);
//                 },
//                 icon:
//                 favSongData.isFavorite(song)
//                     ? const Icon(Icons.favorite)
//                     : const Icon(Icons.favorite_outline_rounded),
//               ),
//             ]),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class FavSongs extends ChangeNotifier {
//   final List<String> _favSongs = [];
//
//   void addFavSong(String newSong) {
//     if (!_favSongs.contains(newSong)) {
//       _favSongs.add(newSong);
//       if (kDebugMode) {
//         print(_favSongs);
//       }
//     }
//     notifyListeners();
//   }
//
//   bool isFavorite(String song) => _favSongs.contains(song);
// }
