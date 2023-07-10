import 'package:app_hustle_music_player_app/screens/sign_up_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // The timer being set to trigger action after specified duration.

    Future.delayed(const Duration(seconds: 5), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage()),
          );
        });

    // The splash screen logo or picture shown defined below.

    // Can use a try and catch block if needed
    // to show certain error message like version of app not supported or
    // specific flutter error displayed as simple message.

    return const Scaffold(
        body: Center(
          child: Center(
            child: Row(
              children: [
                Icon(
                    Icons.music_note,
                  size: 150.0,
                ),
                Icon(
                  Icons.music_note,
                  size: 130.0,
                ),
                Icon(
                  Icons.music_note,
                  size: 110.0,
                ),

              ],
            ),
          ),
      ),
    );
  }
}