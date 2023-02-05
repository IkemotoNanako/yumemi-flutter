import 'package:flutter/material.dart';

import 'search_box.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(198, 192, 156, 0.3),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 30),
        child: SearchBox(),
      ),
    );
  }
}
