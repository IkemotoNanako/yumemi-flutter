import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter/class/repository_class.dart';
import 'package:yumemi_flutter/provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../service/search_repository.dart';
import 'build_list_card.dart';
import 'enpty_widget.dart';
import 'loading_widget.dart';
import 'tell_error_widget.dart';

class Result extends ConsumerWidget {
  const Result({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusCode = ref.watch(errorCodeProvider);
    final searchWord = ref.watch(searchWordProvider);
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
            return BuildListCard(repositories: repositories);
          } else if (searchWord.isEmpty) {
            return const EnptyWidget();
          } else if (statusCode == 422) {
            return const LoadingWidget();
          } else if (statusCode != 200) {
            return TellErrorWidget(statusCode: statusCode);
          }
          return Expanded(
              child: Center(
                  child: Text(AppLocalizations.of(context).noResultMessage)));
        });
  }
}
