import 'package:flutter/material.dart';
import 'package:forum/forum/TagPage.dart';
import 'package:forum/forum/models/forum_post.dart';

class Tag extends StatelessWidget {
  final String name;
  // List<String> tagged_forum = <String>[];
  List<Forum_Post> tagged_forum = <Forum_Post>[];
  String set = "1";

  Tag(this.name, this.set) {
    // tagged_forum = <String>[];
    print("the tag with name ${name} is created [Tag]");
  }

  String get tagName {
    return "#" + name + " ";
  }

  // void addPost(String fid) {
  //   tagged_forum.add(fid);
  //   print("the forum post ${fid} is added to the tag ${name}");
  // }

  void addPost(Forum_Post fid) {
    tagged_forum.add(fid);
    print("the forum post is added to the tag ${name}");
  }

  // List<String> get post => tagged_forum;

  @override
  Widget build(BuildContext context) {
    if (set == "1") {
      return Container(
        // padding: const EdgeInsets.all(1.0),
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                print(tagName + " pressed");
                var forward = Tag(name, "");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TagPage(forward, tagged_forum)),
                );
              },
              child: Text(tagName, style: const TextStyle(color: Colors.black)),
            ),
          ],
        ),
      );
    } else {
      return Container(
        // padding: const EdgeInsets.all(1.0),
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                print(tagName + " pressed");
                var forward = Tag(name, "");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TagPage(forward, tagged_forum)),
                );
              },
              child: Text(tagName, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );
    }
  }
}
