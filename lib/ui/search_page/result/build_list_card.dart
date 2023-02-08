import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:yumemi_flutter/class/repository_class.dart';
import 'package:yumemi_flutter/provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../service/search_repository.dart';
import 'repository_card.dart';

class BuildListCard extends ConsumerWidget {
  const BuildListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusCode = ref.watch(errorCodeProvider);
    return FutureBuilder<List<GithubRepository>>(
        future: ref.watch(searchRepositoryProvider.future),
        builder: (context, snapshot) {
          final dynamic repositories;
          if (snapshot.hasData) {
            repositories = snapshot.data;
          } else {
            repositories = [];
          }
          if (repositories.isNotEmpty) {
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
          } else if (ref.watch(searchWordProvider).isEmpty) {
            return Expanded(
                child: Center(
                    child: Text(AppLocalizations.of(context).noResultMessage)));
          } else if (statusCode == 422) {
            return Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    color: Color.fromRGBO(245, 206, 199, 1),
                  )),
            );
          } else if (statusCode != 200) {
            return Expanded(
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(statusCode.toString()),
                  Text(AppLocalizations.of(context).errorMessage)
                ],
              )),
            );
          }
          return Expanded(
              child: Center(
                  child: Text(AppLocalizations.of(context).noResultMessage)));
        });
  }
}
