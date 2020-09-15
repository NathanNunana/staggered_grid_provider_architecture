import 'package:feedpage/pages/feed_page.dart';
import 'package:feedpage/providers/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<FeedModel>(
          create: (_) => FeedModel(),
          child: SafeArea(
              child:
                  Scaffold(backgroundColor: Colors.white, body: FeedPage()))),
    );
  }
}
