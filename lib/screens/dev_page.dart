import 'package:flutter/material.dart';

class DevPage extends StatelessWidget {
  const DevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('This Page is under Development',
        style:TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.1,
          fontWeight: FontWeight.w700,
        ),),
      ),
    );
  }
}
