import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant/language_list.dart';
import '../provider/provider.dart';
import '../class/repository_class.dart';

final searchRepositoryProvider =
    FutureProvider<List<GithubRepository>>((ref) async {
  try {
    final searchWord = ref.watch(searchWordProvider);
    final languageIndex = ref.watch(languageIndexProvider);
    final response = await http.get(Uri.https(
      'api.github.com',
      '/search/repositories',
      {
        'q': languageIndex == 0
            ? searchWord
            : '$searchWord language:${languages[languageIndex].toLowerCase()}',
        'sort': 'stars',
      },
    ));

    if (response.statusCode == 200) {
      List<GithubRepository> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['items']) {
        list.add(GithubRepository.fromJson(item));
      }
      ref.watch(errorCodeProvider.notifier).state = 200;
      return list;
    } else {
      ref.watch(errorCodeProvider.notifier).state = response.statusCode;
      return [];
    }
  } on SocketException catch (_) {
    return [];
  }
});
