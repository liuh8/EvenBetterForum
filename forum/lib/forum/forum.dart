import 'package:even_better/screens/forum/create_forum.dart';
import 'package:even_better/screens/forum/detail_forum.dart';
import 'package:even_better/screens/forum/models/forum_answer.dart';
import 'package:even_better/screens/forum/models/forum_post.dart' as fp;
import 'package:even_better/screens/forum/models/tag.dart';
import 'package:flutter/material.dart';

class ForumListPage extends StatefulWidget {
  @override
  _ForumListPageState createState() => _ForumListPageState();
}

class _ForumListPageState extends State<ForumListPage> {
  var topTagGroup = Container(
    alignment: Alignment.center,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    ),
    child: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 0.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Tag("Framework", ""),
                Tag("Company", ""),
                Tag("Project", "")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Tag("OO Design", ""),
                Tag("Java", ""),
                Tag("...", "")
              ],
            ),
          ],
        )),
  );

  @override
  Widget build(BuildContext context) {
    var listItemsData = [
      fp.Forum_Post(
          "user1",
          "forum1",
          "title1",
          "content1",
          [Tag("Project", "")],
          [Forum_Answer("answerid1", "poster1", "Hello")]),
      fp.Forum_Post(
          "user2",
          "forum2",
          "title2",
          "content2",
          [Tag("Project", "")],
          [Forum_Answer("answerid1", "poster1", "Hello")]),
      fp.Forum_Post(
          "user3",
          "forum3",
          "title3",
          "content3",
          [Tag("Project", "")],
          [Forum_Answer("answerid1", "poster1", "Hello")]),
      fp.Forum_Post(
          "user4",
          "forum4",
          "title4",
          "content4",
          [Tag("Project", "")],
          [Forum_Answer("answerid1", "poster1", "Hello,")]),
      fp.Forum_Post("user5", "forum5", "title5", "content5",
          [Tag("Project", "")], [Forum_Answer("answerid1", "poster1", "Hello")])
    ];

    var listpage = Container(
        padding: const EdgeInsets.all(2.0),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) =>
              fp.ForumPost(listItemsData[index]),
          itemCount: listItemsData.length,
          shrinkWrap: true,
        ));

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        title: const Text("Even Better Forum"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_circle),
            onPressed: _onCreateForumPressed,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[topTagGroup, listpage],

          // <Widget>[
          //   Row(
          //     children: <Widget>[topTagGroup],
          //   ),
          //   // Expanded(
          //   //   child: listpage,
          //   // )
          // ],
        ),
      ),
    );
  }

  void _onCreateForumPressed() {
    // Navigator.pop(context);
    print('add new post');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => createForum()),
    );
  }
}
