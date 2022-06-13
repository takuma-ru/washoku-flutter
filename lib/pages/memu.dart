import 'package:flutter/material.dart';
import 'package:washoku/model/theme.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key, /* required this.title */}) : super(key: key);

  /* final String title; */

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Menu'),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
                icon: const Icon(Icons.arrow_right),
                label: const Text('Go to Detail'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(Icons.arrow_right),
                label: const Text('Go to Top'),
              ),
            ],
          )
        ),
      ),
    );
  }
}