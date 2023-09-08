import 'package:fbgorouter/fb_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore_for_file: prefer_const_constructors

class FBBody extends StatefulWidget {
  const FBBody({super.key});

  @override
  State<FBBody> createState() => _FBBodyState();
}

class _FBBodyState extends State<FBBody> {
  String search = 'search string';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FBAppBar(),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: const Text(
                  'Go Name',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                onTap: () {
                  context.goNamed('page2');
                },
              ),
              GestureDetector(
                child: const Text(
                  'Go Path',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                onTap: () {
                  context.go('/page2');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              search = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    onTap: () {
                      context.go('/page3/$search');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
