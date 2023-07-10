import 'package:app_hustle_music_player_app/screens/home_page.dart';
import 'package:app_hustle_music_player_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.yellowAccent,
                    radius: 70.0,
                    child: Icon(
                      Icons.music_note_sharp,
                      size: 80.0,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    // Wrapped Card in SizedBox to control its width.

                    width: MediaQuery.of(context).size.width * 0.8,

                    // Card used to make text input fields.

                    child: const CardWithIconAndText(
                      text: "Enter E-mail Id",
                      icon: Icons.mail,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    // Wrapped Card in SizedBox to control its width.

                    width: MediaQuery.of(context).size.width * 0.8,

                    // Card used to make text input fields.

                    child: const CardWithIconAndText(
                      text: "Enter Password",
                      icon: Icons.lock,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.height * 0.04)
                            .toDouble(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(
                      fontSize: (MediaQuery.of(context).size.height * 0.03)
                          .toDouble(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      " Log In ",
                      style: TextStyle(
                        fontSize: (MediaQuery.of(context).size.height * 0.04)
                            .toDouble(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
