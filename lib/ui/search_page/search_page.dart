import 'package:flutter/material.dart';

import 'result/build_list_card.dart';
import 'search/search_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: const [SearchWidget(), BuildListCard()],
        ),
      ),
    ));
  }
}
