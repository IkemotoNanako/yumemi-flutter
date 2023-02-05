import 'package:flutter/material.dart';
import 'package:yumemi_flutter/class/github_repository_class.dart';

import '../../details_page/details_page.dart';

class RepositoryCard extends StatelessWidget {
  const RepositoryCard({super.key, required this.repository});
  final GithubRepository repository;
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
        color: const Color.fromRGBO(245, 206, 199, 0.5),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            repository.fullName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
