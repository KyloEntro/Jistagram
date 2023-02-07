import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_circular_avatar.dart';

class ContentViewer extends StatefulWidget {
  @override
  State<ContentViewer> createState() => _ContentViewerState();
}

class _ContentViewerState extends State<ContentViewer> {
  bool liked = false;
  int likeCounter = 140;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          height: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Avatar(fileName: "assets/profile7.jpg"),
                Center(
                  child: Text(
                    "Name",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    " - 4h",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
                Spacer(),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("...", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image(
            image: AssetImage("assets/content1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          child: Center(
            child: Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      liked = !liked;
                      if (liked) {
                        likeCounter += 1;
                      } else {
                        likeCounter -= 1;
                      }
                    });
                  },
                  padding: EdgeInsets.zero,
                  height: 0,
                  minWidth: 0,
                  child: Icon(
                    liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                    size: 35,
                    color: liked ? Colors.red : Colors.white,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    print("EJQWIOEJO");
                  },
                  padding: EdgeInsets.zero,
                  height: 0,
                  minWidth: 0,
                  child: Icon(
                    CupertinoIcons.chat_bubble,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    print("EJQWIOEJO");
                  },
                  padding: EdgeInsets.zero,
                  height: 0,
                  minWidth: 0,
                  child: Icon(
                    CupertinoIcons.paperplane,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(CupertinoIcons.bookmark, size: 30),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 30,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "$likeCounter j'aime",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            text: TextSpan(
              text: "Commentator ",
              style: TextStyle(fontWeight: FontWeight.w900),
              children: [
                TextSpan(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lobortis velit quis mi fringilla faucibus. Suspendisse placerat neque id egestas",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 20,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Afficher les 42 commentaires",
              style: TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
