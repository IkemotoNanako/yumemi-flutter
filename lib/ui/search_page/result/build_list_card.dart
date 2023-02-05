import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter/provider/provider.dart';

import 'repository_card.dart';

class BuildListCard extends ConsumerWidget {
  const BuildListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repositories = ref.watch(repositoryProvider);
    if (repositories.isNotEmpty) {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (BuildContext context, int index) {
                final repository = repositories[index];
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: RepositoryCard(repository: repository),
                );
              }),
        ),
      );
    } else {
      return const Expanded(child: Center(child: Text('検索ワードを変えてください')));
    }
  }
}
