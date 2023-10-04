import 'package:flutter/material.dart';
import 'package:task_two/main_widgets/app_bars.dart';

//-------------------------------------------------------------------------//

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const MainAppBar(
        barText: "About Me",
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/me.png',
              width: 300,
            ),
          ],
        ),
      ),
    ));
  }
}
