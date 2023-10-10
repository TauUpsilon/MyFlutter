import 'package:flutter/material.dart';
import 'package:flutter_proj/app/app.widget.dart';
import 'package:flutter_proj/core/alpha.core.dart';
import 'package:flutter_proj/shares/widgets/header.widget.dart';

class HomePage extends StatefulWidget with AlphaCore {
  HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  PreferredSize header() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: HeaderBarWidget(title: AppConfig.appTitle),
    );
  }

  Widget body() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/network', arguments: 'Test');
              },
              child: const Text('Network'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/component');
              },
              child: const Text('Component'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(),
      body: body(),
    );
  }
}
