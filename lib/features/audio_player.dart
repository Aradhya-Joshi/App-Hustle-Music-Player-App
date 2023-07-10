// import 'package:audioplayers/audioplayers.dart';
//
// class AudioHelper {
//   static AudioPlayer audioPlayer = AudioPlayer();
//
//   static Future<void> playAudio(String path) async {
//     await audioPlayer.setSource(AssetSource(path));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class AudioPlayerWidget extends StatefulWidget {
//   final String assetPath;
//
//   const AudioPlayerWidget({Key? key, required this.assetPath})
//       : super(key: key);
//
//   @override
//   _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
// }
//
// class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
//
//   AudioPlayer player = AudioPlayer();
//
//   @override
//   void initState() {
//     super.initState();
//     player = AudioPlayer();
//   }
//
//   @override
//   void dispose() {
//     player.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: ()  {
//         player.setSourceAsset('ke_barabar.mp3');
//       },
//       icon: const Icon(Icons.play_arrow),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({super.key});

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}


class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {

  late final AudioPlayer player ;
  String audioPath = 'ram_siya_ram.mp3';

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    loadAudio();
  }

  Future<void> loadAudio() async {
    await player.setSourceAsset(audioPath);
  }

  Future<void> playAudio() async {
    await player.resume();
  }

  Future<void> pauseAudio() async {
    await player.pause();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        ElevatedButton(
          onPressed: playAudio,
          child: const Text('Play'),
        ),
        ElevatedButton(
          onPressed: pauseAudio,
          child: const Text('Pause'),
        ),
      ],
    );
  }
}


