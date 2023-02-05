import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (text) {},
      decoration: const InputDecoration(
          border: InputBorder.none, hintText: 'repository'),
    );
  }
}
