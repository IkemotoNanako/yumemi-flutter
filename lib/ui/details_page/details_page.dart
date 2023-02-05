import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yumemi_flutter/class/repository_class.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.repository});

  final GithubRepository repository;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(235, 188, 133, 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  repository.fullName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            height: 200,
            child: Image.network(repository.owner['avatar_url']),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(255, 201, 139, 0.2),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(repository.fullName),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(repository.language),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(repository.description),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star_border),
                      Text(repository.stargazersCount.toString()),
                      Icon(Icons.visibility),
                      Text(repository.watchersCount.toString()),
                      Icon(Icons.fork_right),
                      Text(repository.forksCount.toString()),
                      Icon(Icons.bug_report),
                      Text(repository.openIssuesCount.toString())
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      var url = Uri.parse(repository.htmlUrl);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                    child: const Text("link")),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
