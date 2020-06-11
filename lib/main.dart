import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:harshalchaudhari/link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HarshalChaudhari',
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: SingleChildScrollView(
          child: Flexible(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.8, //700,
                width: MediaQuery.of(context).size.height * 0.45, //500,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/bg1.webp"),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03, //40,
                    ),
                    Container(
                      height: /*200,*/ MediaQuery.of(context).size.height *
                          0.23,
                      width: /*190,*/ MediaQuery.of(context).size.height * 0.23,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("images/profile.webp")),
                      ),
                    ),
                    SizedBox(
                      height: /*15,*/ MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      "I'm Harshal Chaudhari",
                      style: GoogleFonts.lobster(
                          fontSize: /*25*/ MediaQuery.of(context).size.height *
                              0.036,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                    Text(
                      "Student",
                      style: GoogleFonts.lobster(
                          fontSize: /*20*/ MediaQuery.of(context).size.height *
                              0.031,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                    SizedBox(
                      height: /*130,*/ MediaQuery.of(context).size.height *
                          0.13,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "FullStack Developer",
                            style: GoogleFonts.lobster(
                                fontSize: /*20*/ MediaQuery.of(context)
                                        .size
                                        .height *
                                    0.031,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                            textWidthBasis: TextWidthBasis.longestLine,
                          ),
                          Text(
                            "UI Designer",
                            style: GoogleFonts.lobster(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.031,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                            textWidthBasis: TextWidthBasis.longestLine,
                          ),
                          Text(
                            "Comfortable with Java,Dart",
                            style: GoogleFonts.lobster(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.031,
                                fontStyle: FontStyle.italic,
                                color: Colors.black),
                            textWidthBasis: TextWidthBasis.longestLine,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: /*40,*/ MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.horizontal,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                LineAwesomeIcons.github,
                                size: MediaQuery.of(context).size.height * 0.05,
                              ),
                              onPressed: () {
                                openURL("https://github.com/HS07007");
                                print("pressed..");
                              }),
                          IconButton(
                              icon: Icon(
                                LineAwesomeIcons.linkedin,
                                size: MediaQuery.of(context).size.height * 0.051,
                              ),
                              onPressed: () {
                                openURL(
                                    "https://www.linkedin.com/in/harshal-chaudhari-32a6b313b/");
                              }),
                          IconButton(
                              icon: Icon(
                                LineAwesomeIcons.instagram,
                                size: MediaQuery.of(context).size.height * 0.05,
                              ),
                              onPressed: () {
                                openURL(
                                    "https://www.instagram.com/self_beliver_hs13/");
                              }),
                          // IconButton(
                          //   icon: Icon(
                          //     Icons.mail_outline,
                          //     size: MediaQuery.of(context).size.height * 0.046,
                          //   ),
                          //   onPressed: () async {
                          //     await openURL(
                          //         "mailto:harshalchaudhari971@gmail.com");
                          //   },
                          // ),
                        ],
                      ),
                    ),
                    Text(
                      "Developed & designed In Flutter",
                      style: GoogleFonts.lobster(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontStyle: FontStyle.italic,
                          color: Colors.black),
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
