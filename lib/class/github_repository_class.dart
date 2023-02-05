class GithubRepository {
  GithubRepository(
      {required this.fullName,
      required this.description,
      required this.language,
      required this.htmlUrl,
      required this.stargazersCount,
      required this.watchersCount,
      required this.forksCount});

  final String fullName;
  final String description;
  final String language;
  final String htmlUrl;
  final int stargazersCount;
  final int watchersCount;
  final int forksCount;

  factory GithubRepository.fromJson(Map<String, dynamic> json) {
    return GithubRepository(
      fullName: json['full_name'] ?? '',
      description: json['description'] ?? '',
      language: json['language'] ?? '',
      htmlUrl: json['html_url'] ?? '',
      stargazersCount: json['stargazers_count'],
      watchersCount: json['watchers_count'],
      forksCount: json['forks_count'],
    );
  }
}
