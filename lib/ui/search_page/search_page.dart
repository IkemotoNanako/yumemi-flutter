import 'package:flutter/material.dart';
import '../search_page/result/result.dart';
import 'search/search_widget.dart';
import 'select_language/select_language.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            children: const [SearchWidget(), SelectLanguage(), Result()],
          ),
        ),
      ),
    ));
  }
}
