import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../provider/provider.dart';
import '../../../service/search_repository.dart';

class SearchField extends ConsumerWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
        onChanged: (text) async {
          ref
              .watch(searchWordProvider.notifier)
              .update((state) => state = text);
          final repository = await ref.read(searchRepositoryProvider.future);
          ref
              .watch(repositoryProvider.notifier)
              .update((state) => state = repository);
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: AppLocalizations.of(context).searchHint));
  }
}
