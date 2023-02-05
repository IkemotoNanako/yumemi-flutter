import 'dart:convert';
import 'dart:io';
import '../class/repository_class.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/provider.dart';

final searchRepositoryProvider =
    FutureProvider<List<GithubRepository>>((ref) async {
  try {
    final response =
        await http.get(Uri.https('api.github.com', '/search/repositories', {
      'q': ref.watch(searchWordProvider),
      'sort': 'stars',
    }));
    switch (response.statusCode) {
      case 200:
        List<GithubRepository> list = [];
        Map<String, dynamic> decoded = json.decode(response.body);
        for (var item in decoded['items']) {
          list.add(GithubRepository.fromJson(item));
        }
        return list;
      default:
        return [];
    }
  } on SocketException catch (_) {
    return [];
  }
});
