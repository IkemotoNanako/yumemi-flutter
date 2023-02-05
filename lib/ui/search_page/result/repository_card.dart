import 'package:flutter/material.dart';

import '../../details_page/details_page.dart';

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsPage()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: const Color.fromRGBO(245, 206, 199, 1),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("repository name"),
        ),
      ),
    );
  }
}
