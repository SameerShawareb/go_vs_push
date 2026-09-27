import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'route_names.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page B'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.goNamed(RouteNames.pageC),
          //onPressed: () => context.pushNamed(RouteNames.pageC),
          child: const Text('Go to Page C'),
        ),
      ),
    );
  }
}
