import 'package:flutter/material.dart';
import '../post.dart';

class Listview extends StatelessWidget {
  const Listview ({super.key});

  Widget _listItermBuilder(BuildContext c, int index) {
    // return Text(posts[index].title);\
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8.0), //外边距
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
          const SizedBox(
            height: 8.0,
          ),
          Text(
              posts[index].id,
              style: Theme.of(c).textTheme.titleLarge
          ),
          Text(
              posts[index].title,
              style: Theme.of(c).textTheme.titleLarge
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItermBuilder,
        );
  }
}