import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/cropped_image.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Solomon Zhao", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    colorFilter: ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                    width: 35.0,
                  ),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                        "https://www.instagram.com/solomonzcy/profilecard/?igsh=MTFnNnUxOGgwYzNxZw==",
                      ),
                    );
                  },
                ),

                urlLauncher(
                  "assets/twitter.svg",
                  "https://x.com/Solomon_Zhaocy",
                ),
                urlLauncher(
                  "assets/github.svg",
                  "https://github.com/Solomon-zhao",
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(flex: 3),
            TabsWeb(title: 'Home', route: '/'),
            Spacer(),
            TabsWeb(title: 'Work', route: '/works'),
            Spacer(),
            TabsWeb(title: 'Blog', route: '/blog'),
            Spacer(),
            TabsWeb(title: 'About', route: '/about'),
            Spacer(),
            TabsWeb(title: 'Contact', route: '/contact'),
          ],
        ),
      ),
      body: ListView(
        children: [
          //About me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              wBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Hello! I'm Solomon Zhao, I specialize in flutter development. I strive to ensure astounding performance with state of the art security for Android, Ios, Web, Mac, Linus and Windows",
                      15.0,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: PageDesignColor,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Flutter", 15.0),
                        ),
                        SizedBox(width: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: PageDesignColor,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Firebase", 15.0),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: PageDesignColor,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Andrioid", 15.0),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: PageDesignColor,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Ios", 15.0),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: PageDesignColor,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.all(7.0),
                          child: Sans("Windows", 15.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              wBox(width: 30.0),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: PageDesignColor,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/cropped_image.png'),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedCard(
                    imagePath: 'assets/webL.png',
                    width: 250.0,
                    height: 250.0,
                    text: "Web Development",
                  ),
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Web Development", 30.0),
                        hBox(height: 20.0),
                        Sans(
                          "I build cool, responsive websites that look awesome on any device.",
                          15.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Web Development", 30.0),
                        hBox(height: 20.0),
                        Sans(
                          "I build cool, responsive websites that look awesome on any device.",
                          15.0,
                        ),
                      ],
                    ),
                  ),
                  AnimatedCard(
                    imagePath: 'assets/app.png',
                    width: 250.0,
                    height: 250.0,
                    text: "App Development",
                    fit: BoxFit.contain,
                    reverse: true,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  AnimatedCard(
                    imagePath: 'assets/firebase.png',
                    text: "Back-end Development",
                  ),

                  SizedBox(
                    width: widthDevice / 3,
                    child: Column(
                      children: [
                        SansBold("Web Development", 30.0),
                        hBox(height: 20.0),
                        Sans(
                          "I build cool, responsive websites that look awesome on any device.",
                          15.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              hBox(height: 30.0),
            ],
          ),
        ],
      ),
    );
  }
}
