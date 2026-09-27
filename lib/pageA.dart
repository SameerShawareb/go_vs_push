import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'route_names.dart';

class PageA extends StatelessWidget{
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
      ),
      body: Center(
        child: ElevatedButton(
          //onPressed: () => context.goNamed(RouteNames.pageB),
          onPressed: () => context.pushNamed(RouteNames.pageB),
          child: const Text('Go to Page B'),
        ),
      ),

    );
  }
}