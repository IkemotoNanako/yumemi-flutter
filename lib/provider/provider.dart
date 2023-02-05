import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter/class/github_repository_class.dart';

final searchWordProvider = StateProvider((ref) => '');
final StateProvider<List<GithubRepository>> repositoryProvider =
    StateProvider((ref) => []);
