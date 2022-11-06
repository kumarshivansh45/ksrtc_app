import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:fluentui_icons/fluentui_icons.dart";
import "package:ksrtc_flutter/tutorials/clippers.dart";

class Adcard extends StatefulWidget {
  const Adcard({super.key});

  @override
  State<Adcard> createState() => _AdcardState();
}

class _AdcardState extends State<Adcard> {
  @override
  Widget build(BuildContext context) {
    const double rad = 10.0;
    const double rad2 = 5.0;
    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;
    const double marg_horiz = 5.0;
    const double marg_vert = 5.0;

    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.symmetric(horizontal: marg_horiz, vertical: marg_vert),
        height: 400,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(rad2),
                bottomRight: Radius.circular(rad2),
                topLeft: Radius.circular(rad2),
                bottomLeft: Radius.circular(rad2))),
        child: Column(children: [
          SizedBox(
            height: 100, // remove sized box later
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: marg_horiz),
              child: Row(children: [
                ClipPath(
                  clipper: AdlabelClipper(),
                  child: Row(children: [
                    SizedBox(height: 30, width: 5),
                    Container(
                        // margin: EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          // borderRadius: BorderRadius.only(
                          //     bottomLeft: Radius.circular(3),
                          //     topLeft: Radius.circular(3))
                        ),
                        height: 30,
                        width: 100,
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2)),
                            InkWell(
                              customBorder: CircleBorder(),
                              child: Icon(
                                Icons.info_outline,
                                color: Colors.black.withOpacity(0.4),
                              ),
                              onTap: () {
                                print("pressed Sponsor info");
                              },
                            ),
                            Text("Sponsored",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4),
                                    fontStyle: FontStyle.italic)),
                          ],
                        )),
                  ]),
                ),
              ])),
          InkWell(
            child: Container(
              height: 200,
              width: width_screen,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image.asset(
                  "./resources/ad3.jpg",
                  scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(rad),
                    bottomRight: Radius.circular(rad),
                    topLeft: Radius.circular(rad),
                    bottomLeft: Radius.circular(rad)),
              ),
            ),
            onTap: () {
              print("adClick");
            },
          ),
        ]),
      ),
    );
  }
}

/////////////////////////////////////ARTICLES///////////////////////////////////
class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    const double rad = 10.0;
    const double rad2 = 5.0;

    const double marg_horiz = 5.0;
    const double marg_vert = 5.0;

    return Scaffold(
      body: InkWell(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: marg_horiz, vertical: marg_vert),
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(rad2),
                  bottomRight: Radius.circular(rad2),
                  topLeft: Radius.circular(rad2),
                  bottomLeft: Radius.circular(rad2))),
          child: Column(children: [
            SizedBox(
              height: 100, // remove sized box later
            ),
            Container(
              child: Text(
                "articles",
              ),
            ),
            Container(
              height: 200,
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(rad),
                child: Image.asset(
                  "./resources/ad3.jpg",
                  scale: 1,
                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(rad),
                    bottomRight: Radius.circular(rad),
                    topLeft: Radius.circular(rad),
                    bottomLeft: Radius.circular(rad)),
              ),
            ),
          ]),
        ),
        onTap: () {
          print("adClicked");
        },
      ),
    );
  }
}
