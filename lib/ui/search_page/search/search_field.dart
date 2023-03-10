import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../provider/provider.dart';

class SearchField extends ConsumerWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
        style: const TextStyle(
          color: Colors.black87,
        ),
        onChanged: (text) async {
          ref.watch(searchWordProvider.notifier).state = text;
        },
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: AppLocalizations.of(context).searchHint));
  }
}
