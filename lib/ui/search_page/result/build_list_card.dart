import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../class/repository_class.dart';
import 'repository_card.dart';

class BuildListCard extends StatelessWidget {
  const BuildListCard({
    super.key,
    required this.repositories,
  });

  final List<GithubRepository> repositories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimationLimiter(
          child: ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (BuildContext context, int index) {
                final repository = repositories[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: RepositoryCard(repository: repository),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
