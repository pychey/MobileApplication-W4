import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            CustomCard(text: 'OOP', color: Colors.blue[100]!),
            Gap(20),
            CustomCard(text: 'DART', color: Colors.blue[300]!),
            Gap(20),
            CustomCard.gradient(text: 'FLUTTER', from: Colors.blue[300], to: Colors.blue[600])
          ]
        ),
      )
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? from;
  final Color? to;

  const CustomCard({
    super.key,
    required this.text,
    this.color = Colors.blue
  }) : from = null, to = null;

  const CustomCard.gradient({
    super.key,
    required this.text,
    this.from = Colors.blue,
    this.to = Colors.blue
  }) : color = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
        gradient: (from != null && to != null) ? LinearGradient(
          colors: [
            from!,
            to!
          ]
        ) : null
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 60,
            color: Colors.white,
            decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}
