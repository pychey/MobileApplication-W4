import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(
    MaterialApp(
      home: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue[100]
              ),
              child: Center(
                child: Text(
                  'OOP',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue[300]
              ),
              child: Center(
                child: Text(
                  'DART',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ),
            Gap(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[300]!,
                    Colors.blue[600]!
                  ]
                )
              ),
              child: Center(
                child: Text(
                  'FLUTTER',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            )
          ]
        ),
      )
    ),
  );
}
