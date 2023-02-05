import 'package:flutter/material.dart';

import 'repository_card.dart';

class BuildListCard extends StatelessWidget {
  const BuildListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.all(3.0),
                child: RepositoryCard(),
              );
            }),
      ),
    );
  }
}
