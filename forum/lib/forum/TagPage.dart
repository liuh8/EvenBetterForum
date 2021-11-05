// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:forum/forum/models/forum_answer.dart';
import 'package:forum/forum/models/tag.dart';
import 'package:forum/forum/models/forum_post.dart' as fp;

class TagPage extends StatefulWidget {
  final Tag tag;
  TagPage(this.tag);

  @override
  _TagPageState createState() => _TagPageState(tag);
}

class _TagPageState extends State<TagPage> {
  final Tag tag;
  _TagPageState(this.tag);

  @override
  Widget build(BuildContext context) {
    var TagName = tag.tagName;
    // var allForums = tag.post; // <----- use this when integrate with backend
    var allPosts = [
      fp.Forum_Post("li12", "forum1", "What do you think about Flutter?", " ", [
        Tag("Flutter", "")
      ], [
        Forum_Answer("answerid1", "flutter.dev",
            "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase.")
      ]),
      fp.Forum_Post("chend", "forum2", "", "content2", [Tag("Project", "")],
          [Forum_Answer("answerid1", "poster1", "Hello")]),
    ];
    return Container();
  }
}
