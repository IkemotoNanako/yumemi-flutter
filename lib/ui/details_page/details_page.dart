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
              color: Color.fromRGBO(235, 188, 133, 0.7),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    repository.fullName,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(repository.fullName),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(repository.language),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(repository.description),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star_border),
                      Text(repository.stargazersCount.toString()),
                      const Icon(Icons.visibility),
                      Text(repository.watchersCount.toString()),
                      const Icon(Icons.fork_right),
                      Text(repository.forksCount.toString()),
                      const Icon(Icons.bug_report),
                      Text(repository.openIssuesCount.toString())
                    ],
                  ),
                ),
                TextButton(
                    onPressed: () async {
                      var url = Uri.parse(repository.htmlUrl);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
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
