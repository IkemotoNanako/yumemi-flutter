import 'package:flutter/material.dart';

import 'ui/search_page/result/build_list_card.dart';
import 'ui/search_page/search/search_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: const [SearchWidget(), BuildListCard()],
      ),
    ));
  }
}
