import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 201, 139, 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
            child: const Center(
              child: Text(
                'repository name',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32.0),
            height: 200,
            child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          ),
          Expanded(
            child: Container(
              color: const Color.fromRGBO(255, 201, 139, 0.2),
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('repository name'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('language'),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('description'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star_border),
                      Text('2'),
                      Icon(Icons.visibility),
                      Text('500'),
                      Icon(Icons.fork_right),
                      Text('30'),
                      Icon(Icons.bug_report),
                      Text('10')
                    ],
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("link")),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
