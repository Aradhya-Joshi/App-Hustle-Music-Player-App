import 'package:provider/provider.dart';
import './screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'components/fav_song_list.dart';
import 'features/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationBarProvider>(
            create: (_) => BottomNavigationBarProvider(),
        ),
        ChangeNotifierProvider<FavSongData>(
          create: (_) => FavSongData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: Colors.lightBlueAccent,

          ),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
