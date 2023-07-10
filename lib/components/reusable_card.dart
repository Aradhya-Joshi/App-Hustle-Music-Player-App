import 'package:flutter/material.dart';

class CardWithIconAndText extends StatelessWidget {

  const CardWithIconAndText({
    super.key, required this.text, required this.icon,
  });

  final String text ;
  final IconData icon;
  //final TextEditingController txtController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          size: 30.0,
        ),
        title: TextField(
          //controller: txtController,
          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

