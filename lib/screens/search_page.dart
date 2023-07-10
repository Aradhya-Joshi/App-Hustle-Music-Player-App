import 'package:flutter/material.dart';
import '../components/song_list.dart';
import '../features/bottom_nav_bar.dart';
import '../features/drawer_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SongData songData = SongData();

  List<String> filteredSongs = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredSongs = songData.songs.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              onPressed: () {
                searchController.clear();
                setState(() {
                  filteredSongs = songData.songs.toList();
                });
              },
              icon: const Icon(Icons.clear),
            ),
          ),
          onChanged: (value) {
            setState(() {
              filteredSongs = songData.songs
                  .where((song) =>
                  song.toLowerCase().contains(value.toLowerCase()))
                  .toList();
            });
          },
        ),
      ),
    drawer: const Drawer(
        child: DrawerList(),
      ),
      body: ListView.builder(
        itemCount: filteredSongs.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(filteredSongs[index]),
          );
        },
      ),
      bottomNavigationBar: const BottonNavBar(),
    );
  }
}