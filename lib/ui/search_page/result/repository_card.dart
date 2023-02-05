import 'package:flutter/material.dart';

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color.fromRGBO(245, 206, 199, 1),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("repository name"),
      ),
    );
  }
}
