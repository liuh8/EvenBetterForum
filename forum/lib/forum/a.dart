// import 'package:even_better/screens/forum/models/forum_answer.dart';
// import 'package:even_better/screens/forum/models/forum_post.dart' as fp;
// import 'package:even_better/screens/forum/models/tag.dart';
// import 'package:flutter/material.dart';

// class ForumListPage extends StatefulWidget {
//   @override
//   _ForumListPageState createState() => _ForumListPageState();
// }

// class _ForumListPageState extends State<ForumListPage> {
//   var topTagGroup = Container(
//     alignment: Alignment.center,
//     decoration: const BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.all(Radius.circular(15.0)),
//     ),
//     child: Container(
//         alignment: Alignment.bottomCenter,
//         margin: const EdgeInsets.symmetric(
//           horizontal: 10.0,
//           vertical: 0.0,
//         ),
//         decoration: const BoxDecoration(
//           color: Colors.red,
//           // border: Border.all(color: Colors.white, width: 1.0),
//           borderRadius: BorderRadius.all(Radius.circular(30.0)),
//         ),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Tag("Framework"),
//                 Tag("Company"),
//                 Tag("Project")
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[Tag("OO Design"), Tag("Java"), Tag("Flutter")],
//             ),
//           ],
//         )),
//   );
//   var categoryMetric = Container(
//     padding: const EdgeInsets.all(5.0),
//     margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
//     decoration: const BoxDecoration(
//       // gradient: LinearGradient(
//       //   colors: [Colors.red, Colors.red],
//       //   // begin: FractionalOffset(0.0, 0.5),
//       //   // end: FractionalOffset(0.0, 1.0),
//       //   stops: [0.0, 1.0],
//       //   tileMode: TileMode.clamp,
//       // ),
//       // border: Border.all(color: Colors.black, width: 1.0),
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(30.0),
//         bottomRight: Radius.circular(30.0),
//       ),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Tag("OO Design"),
//         Tag("Java"),
//         Tag("Flutter")
//         // Tag("Platform")
//       ],
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     var listItemsData = [
//       fp.Forum_Post("user1", "forum1", "title1", "content1", [Tag("Project")],
//           [Forum_Answer("answerid1", "poster1", "Hello")]),
//       fp.Forum_Post("user2", "forum2", "title2", "content2", [Tag("Project")],
//           [Forum_Answer("answerid1", "poster1", "Hello")]),
//       fp.Forum_Post("user3", "forum3", "title3", "content3", [Tag("Project")],
//           [Forum_Answer("answerid1", "poster1", "Hello")]),
//       fp.Forum_Post("user4", "forum4", "title4", "content4", [Tag("Project")],
//           [Forum_Answer("answerid1", "poster1", "Hello,")]),
//       fp.Forum_Post("user5", "forum5", "title5", "content5", [Tag("Project")],
//           [Forum_Answer("answerid1", "poster1", "Hello")])
//     ];

//     var listpage = Container(
//         padding: const EdgeInsets.all(2.0),
//         child: ListView.builder(
//           itemBuilder: (BuildContext context, int index) =>
//               fp.EntryItem(listItemsData[index]),
//           itemCount: listItemsData.length,
//           shrinkWrap: true,
//         ));

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: false,
//         elevation: 0.0,
//         title: const Text("Even Better Forum"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: _onSearchPressed,
//           ),
//         ],
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[topTagGroup, categoryMetric],
//         ),
//       ),
//       // body: Column(
//       //   Expanded(child: <Widget>[topTagGroup, categoryMetric]),
//       // ));
//       //  body: Container(
//       //   child: Column(
//       //     children: <Widget>[
//       //       Expanded(
//       //         child: <Widget>[topTagGroup, categoryMetric],
//       //       ),
//       //     ],
//       //   ),
//       // ));
//     );
//   }

//   // topTagGroup, categoryMetric, listpage
//   // helper() {
//   //   return Container(
//   //       child: ListView.builder(
//   //     itemBuilder: (BuildContext context, int index) =>
//   //         EntryItem(listItemsData[index]),
//   //     itemCount: listItemsData.length,
//   //     shrinkWrap: true,
//   //   ));
//   // }

//   void _onSearchPressed() {
//     // Navigator.pop(context);
//     print('search for content');
//   }
// }


// body: Container(
//         child: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[topTagGroup],
//             ),
//             Row(
//               children: <Widget>[listpage],
//             )
//           ],
//         ),
//       ),


// ---------------------------------

// import 'package:even_better/screens/forum/detail_forum.dart';

// import 'forum_answer.dart';
// import 'tag.dart';
// import 'package:flutter/material.dart';

// class Forum_Post {
//   final String uid; // auther
//   final String fid; // forum_id
//   DateTime post_time = DateTime.utc(1989, DateTime.november, 9);
//   // DateTime _now = DateTime.now();
//   // .year, .month, .day, .hour, .minute
//   String title;
//   String details;
//   List<Tag> tags;
//   List<Forum_Answer> answers;

//   Forum_Post(
//       this.uid, this.fid, this.title, this.details, this.tags, this.answers) {
//     post_time = DateTime.now();
//     print('created a new forum post [Forum_Post]');
//   }
// }

// class ForumPost extends StatelessWidget {
//   final Forum_Post entry;
//   ForumPost(this.entry);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(3.0),
//       margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
//       decoration: BoxDecoration(
//         color: Colors.red[200],
//         borderRadius: const BorderRadius.all(Radius.circular(20.0)),
//       ),
//       child: ListTile(
//         title: Text(entry.title),
//         subtitle: Text(entry.details),
//         leading: Icon(
//           Icons.dashboard,
//           color: Colors.red[500],
//         ),
//         trailing: Row(
//           verticalDirection: VerticalDirection.up,
//           children: <Widget>[
//             Tag("Framework", "1"),
//             Tag("Company", "1"),
//             Tag("Project", "1")
//           ],
//         ),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => DetailedForum()),
//           );
//         },
//       ),
//     );
//   }
// }
