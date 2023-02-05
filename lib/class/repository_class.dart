import 'dart:convert';

class GithubRepository {
  GithubRepository(
      {required this.fullName,
      required this.description,
      required this.language,
      required this.htmlUrl,
      required this.stargazersCount,
      required this.watchersCount,
      required this.forksCount,
      required this.openIssuesCount,
      required this.owner});

  final String fullName;
  final String description;
  final String language;
  final String htmlUrl;
  final int stargazersCount;
  final int watchersCount;
  final int forksCount;
  final int openIssuesCount;
  final owner;

  factory GithubRepository.fromJson(Map<String, dynamic> json) {
    return GithubRepository(
        fullName: json['full_name'] ?? '',
        description: json['description'] ?? '',
        language: json['language'] ?? '',
        htmlUrl: json['html_url'] ?? '',
        stargazersCount: json['stargazers_count'],
        watchersCount: json['watchers_count'],
        forksCount: json['forks_count'],
        openIssuesCount: json['open_issues_count'],
        owner: json['owner']);
  }
}
