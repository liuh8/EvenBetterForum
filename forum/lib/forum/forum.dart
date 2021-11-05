import 'package:flutter/material.dart';
import 'package:forum/forum/create_forum.dart';
import 'package:forum/forum/data.dart';
import 'package:forum/forum/models/forum_answer.dart';
import 'package:forum/forum/models/forum_post.dart' as fp;
import 'package:forum/forum/models/forum_post.dart';
import 'package:forum/forum/models/tag.dart';

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
                Container(
                  child: Column(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          print("showing more tags");
                        },
                        child: const Text("···",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        )),
  );

  @override
  Widget build(BuildContext context) {
    var Answer1 = Forum_Answer("answer1", "Elliot",
        "Displays a Material dialog above the current contents of the app, with Material entrance and exit animations, modal barrier color, and modal barrier behavior (dialog is dismissible with a tap on the barrier).The barrierDismissible argument is used to indicate whether tapping on the barrier will dismiss the dialog. It is true by default and can not be null.");
    var Answer2 = Forum_Answer("answer2", "Renae",
        "A phrase used when talking about something that's more positive or exciting or a better option than that which preceded it. 'Oh, I can come to the party now, and I'll definitely bring an appetizer. Hey, even better!");
    var Answer3 = Forum_Answer("answer3", "Zubair",
        "I did get to my appointment on time and, even better, I didn't have to pay for parking! You could use a vacuum or, even better, a steam cleaner, to get all of this dirt off your rug.");
    var Answer4 = Forum_Answer("answer4", "Cassie",
        "Finally, it would interesting to explore whether the gap between actual and perceived abilities might be greater among those higher in SES. One potential alternative explanation is that people who are higher in SES may actually be above average in terms of a number of skills and abilities. ");
    var Answer5 = Forum_Answer("answer5", "Katelin",
        "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. ");
    var Tag1 = Tag("Framework", "");
    var Tag2 = Tag("Company", "");
    var Tag3 = Tag("Project", "");
    var Tag4 = Tag("OO Design", "");
    var forum1 = Forum_Post("Renae", "forum1", "What Frameworks are you using?",
        " ", [Tag1, Tag2], [Answer1, Answer3, Answer5]);
    var forum2 = Forum_Post(
        "Cassie",
        "forum2",
        "What technical certifications do you have?",
        "are they useful? what do you think?",
        [Tag1, Tag4],
        [Answer2, Answer4]);
    var forum3 = Forum_Post(
        "Katelin",
        "forum3",
        "How are teachers prepared to teach these courses? ",
        " ",
        [Tag3],
        [Answer4, Answer1]);
    var forum4 = Forum_Post(
        "Winston",
        "forum4",
        "What is your favorite model for deep learning? ",
        "RCNN? Transformer?",
        [Tag2],
        [Answer5, Answer3]);
    var forum5 = Forum_Post(
        "Alastair",
        "forum5",
        "Is material covered in Software Requirements useful?",
        "Just wondering",
        [Tag2, Tag4],
        [Answer3, Answer4]);
    var listItemsData = [forum1, forum2, forum3, forum4, forum5];

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

  void _onDotsPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => createForum()),
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
