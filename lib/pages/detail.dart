import 'package:flutter/material.dart';
import 'package:washoku/model/theme.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key, /* required this.title */}) : super(key: key);

  /* final String title; */

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Detail'),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(Icons.arrow_right),
                label: const Text('Go to Top'),
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