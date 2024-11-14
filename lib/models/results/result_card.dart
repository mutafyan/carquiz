import "package:flutter/material.dart";

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      elevation: 6,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
      ),
      color: Colors.deepPurple,
      child: child
    );
  }
}