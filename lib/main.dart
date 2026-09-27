import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_vs_push/pageA.dart';
import 'package:go_vs_push/pageB.dart';
import 'package:go_vs_push/pageC.dart';
import 'package:go_vs_push/route_names.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router',
      routerConfig: _router,
    );
  }
  final GoRouter _router = GoRouter(

    routes: [
      GoRoute(
          name: RouteNames.pageA,
          path: '/',
          builder: (context, state) => const PageA(),
      ),
      GoRoute(
        name: RouteNames.pageB,
        path: 'pageB',
        builder: (context, state) => const PageB(),
      ),
      GoRoute(
        name: RouteNames.pageC,
        path: 'pageC',
        builder: (context, state) => const PageC(),
      )
    ]
  );

  MyApp({super.key});
}

