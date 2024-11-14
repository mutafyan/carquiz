import "package:flutter/material.dart";

class ControlButton extends StatelessWidget {
  const ControlButton({super.key,
    required this.text,
    required this.onPressed,
    required this.icon
  });
  final Function() onPressed;
  final Icon icon;
  final String text;
  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      icon: icon,
      label: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}