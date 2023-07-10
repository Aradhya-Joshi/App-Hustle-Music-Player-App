import 'package:app_hustle_music_player_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/favourite_page.dart';
import '../screens/search_page.dart';


// class BottomNavigationBarProvider with ChangeNotifier {
//   int _currentIndex = 0;
//   int get currentIndex => _currentIndex;
//   set currentIndex(int index) {
//     _currentIndex = index;
//     notifyListeners();
//   }
// }
//
// class BottonNavBar extends StatelessWidget {
//   const BottonNavBar({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Consumer<BottomNavigationBarProvider>(
//
//       builder: (context, selectedIndex, child) {
//
//         return BottomNavigationBar(
//
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search_rounded),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.favorite_outlined),
//               label: 'Favourite',
//             ),
//
//             // BottomNavigationBarItem(
//             //   icon: Icon(Icons.filter_alt_rounded),
//             //   label: 'Artist',
//             // ),
//
//           ],
//
//           // Initializes the current index and rebuilds the state of the widget tree.
//
//           currentIndex: selectedIndex.currentIndex,
//
//           // Highlights the selected Page icon
//           // and sets color for other icons.
//
//           selectedItemColor: Colors.amber[800],
//           unselectedItemColor: Colors.black,
//
//           // Changes the current index and rebuilds the state of the widget tree.
//
//           onTap: (index) => selectedIndex.currentIndex = index,
//         );
//       },
//     );
//   }
// }

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarProvider bottomNavigationBarProvider =
    Provider.of<BottomNavigationBarProvider>(context);

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outlined),
          label: 'Favourite',
        ),
      ],
      currentIndex: bottomNavigationBarProvider.currentIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.black,
      onTap: (index) {
        bottomNavigationBarProvider.currentIndex = index;
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FavouritePage()),
            );
            break;
        }
      },
    );
  }
}


