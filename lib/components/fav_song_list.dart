import 'package:flutter/foundation.dart';

class FavSongData extends ChangeNotifier {
  final List<String> _favsongs = [
    "Song 1",

  ];

  List<String> get favsongs => _favsongs;

  int get favsongCount => _favsongs.length;

  // void addFavSong(String song) {
  //   _favsongs.add(song);
  //   notifyListeners();
  // }

  void removeFavSong(int index) {
    _favsongs.removeAt(index);
    notifyListeners();
  }

  void addFavSong(String newSong) {
    if (!_favsongs.contains(newSong)) {
      _favsongs.add(newSong);
    }
    notifyListeners();
  }

  bool isFavorite(String song) => _favsongs.contains(song);
}

