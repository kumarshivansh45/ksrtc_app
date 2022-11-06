import "package:flutter/cupertino.dart";
import 'package:flutter/material.dart';
import "package:ksrtc_flutter/tutorials/styles.dart";
import "package:gap/gap.dart";
import "package:flutter/widgets.dart";

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFeeedf2),
        body: ListView(
          children: [
            Column(children: [
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Gap(40),
                              Text(
                                "Check availablity",
                                style: Styles.headline2,
                              ),
                              Gap(5),
                              Text(
                                "Book Tickets here",
                                style: Styles.headline3,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          "./resources/bird_yellow.png",
                          scale: 3,
                        )
                      ]),
                ),
              ),
            ])
          ],
        ));
  }
}
