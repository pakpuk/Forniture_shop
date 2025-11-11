import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset("assets/images/unsplash_FkKClUPUURU.png"),
          const SizedBox(
            height: 25,
          ),
          Text(""),
          Text(""),
        ],
      )),
    );
  }
}
