import 'package:flutter/material.dart';

class DrawerPullButton extends StatelessWidget {
  const DrawerPullButton({super.key,required this.icon, required this.onPressed});

  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      // To give background color to the button.

      //fillColor: Colors.red,
      child: Icon(icon),
    );
  }
}