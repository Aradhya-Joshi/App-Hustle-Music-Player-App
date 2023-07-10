import 'dart:collection';
import 'package:flutter/material.dart';

class SongData extends ChangeNotifier {
  final List<String> _songs = [
    'Song 1',
    'Song 2',
    'Song 3',
    'Song 4',
    'Song 5',
    'Song 6',
    'Song 7',
    'Song 8',
    'Song 9',
    'Song 10',
  ];

  UnmodifiableListView<String> get songs {
    return UnmodifiableListView(_songs);
  }

  int get songCount {
    return _songs.length;
  }

  // void addSong(String newSong) {
  //   _songs.add(newSong);
  //   notifyListeners();
  // }
  //
  // void removeSong(int index) {
  //   _songs.removeAt(index);
  //   notifyListeners();
  // }
}
