import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter/provider/provider.dart';
import '../../../constant/language_list.dart';

class SelectLanguage extends ConsumerWidget {
  const SelectLanguage({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 5.0,
        children: List<Widget>.generate(
          languages.length,
          (int index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: ChoiceChip(
                label: Text(languages[index]),
                selected: ref.watch(languageIndexProvider) == index,
                onSelected: (bool selected) {
                  ref
                      .watch(languageIndexProvider.notifier)
                      .update((state) => state = index);
                },
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
