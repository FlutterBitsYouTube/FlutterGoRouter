import 'package:fbgorouter/fb_page2.dart';
import './fb_page3.dart';
import './fb_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const FBGoRouter());
}

class FBGoRouter extends StatelessWidget {
  const FBGoRouter({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'FBBody',
          builder: (context, state) => const FBBody(),
        ),
        GoRoute(
          path: '/page2',
          name: 'page2',
          builder: (context, state) => const FBPage2(),
        ),
        GoRoute(
          path: '/page3/:search',
          name: 'page3',
          builder: (context, state) => FBPage3(
            search: state.pathParameters['search'],
          ),
        )
      ],
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
