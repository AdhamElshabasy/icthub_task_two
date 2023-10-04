import 'package:flutter/material.dart';
import 'package:task_two/features/home/widgets/home_screen_title.dart';
import 'package:task_two/features/home/widgets/home_screen_button.dart';
import 'package:task_two/features/home/screens/home_layout.dart';

//-------------------------------------------------------------------------//

// Function to navigate to a screen by class name
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}

//-------------------------------------------------------------------------//

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 300,
            ),
            const HomeScreenTitle(
              title: 'Task Two',
            ),
            HomeScreenButton(
              buttonAction: () {
                navigateToScreen(context, const HomeLayout());
              },
              buttonText: 'Continue',
            ),
          ],
        ),
      ),
    ));
  }
}
