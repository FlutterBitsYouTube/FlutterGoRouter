import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './fb_app_bar.dart';

class FBPage3 extends StatelessWidget {
  final String? search;
  const FBPage3({super.key, this.search});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FBAppBar(),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(search ?? '',
                  style: const TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 50,
                  )),
              GestureDetector(
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                onTap: () {
                  context.go('/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
