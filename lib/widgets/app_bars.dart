import 'package:flutter/material.dart';

//-------------------------------------------------------------------------//

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String barText;

  const MainAppBar({super.key, required this.barText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,
      backgroundColor: Colors.cyan,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40.0),
        ),
      ),
      title: Text(
        barText,
        style: const TextStyle(fontFamily: 'Righteous', fontSize: 24),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(
      kToolbarHeight + 5.0); // Adjust the height as needed
}
