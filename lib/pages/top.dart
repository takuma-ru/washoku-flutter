import 'package:flutter/material.dart';
import 'package:washoku/model/theme.dart';

class Top extends StatefulWidget {
  const Top({
    Key? key,
    /* required this.title */
  }) : super(key: key);

  /* final String title; */

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Top'),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/detail');
                },
                icon: const Icon(Icons.arrow_right),
                label: const Text('Go to Detail'),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                },
                icon: const Icon(Icons.arrow_right),
                label: const Text('Go to Menu'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
