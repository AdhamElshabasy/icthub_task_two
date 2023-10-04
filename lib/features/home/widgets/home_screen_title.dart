import 'package:flutter/material.dart';

//-------------------------------------------------------------------------//

// Widget to display the Product Title
class HomeScreenTitle extends StatelessWidget {
  final String title;

  const HomeScreenTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 36,
          fontFamily: 'Righteous',
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}