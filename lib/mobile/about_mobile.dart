import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(text, style: GoogleFonts.openSans(fontSize: 15.0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 8.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset("assets/cropped_image.png"),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              hBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              hBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              hBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              hBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              hBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  urlLauncher(
                    "assets/instagram.svg",
                    "https://www.instagram.com/solomonzcy/profilecard/?igsh=MTFnNnUxOGgwYzNxZw==",
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
        body: ListView(
          children: [
            CircleAvatar(
              radius: 117.0,
              backgroundColor: PageDesignColor,
              child: CircleAvatar(
                radius: 113.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/cropped_image.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
            hBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About Me", 35.0),
                  hBox(height: 20.0),
                  Sans(
                    "Hello! I'm Solomon Zhao I specialize in flutter development",
                    15.0,
                  ),
                  Sans(
                    "I strive to ensure astounding performance with state of",
                    15.0,
                  ),
                  Sans(
                    "the art security for Android, Ios, Web, Mac, Linux",
                    15.0,
                  ),
                  hBox(height: 10.0),
                  Wrap(
                    spacing: 7.0,
                    runSpacing: 7.0,
                    children: [
                      tealContainer("Flutter"),
                      tealContainer("Firebase"),
                      tealContainer("Android"),
                      tealContainer("Windows"),
                    ],
                  ),
                ],
              ),
            ),
            hBox(height: 40.0),
            //Second section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(imagePath: "assets/webL.png", width: 200.0),
                hBox(height: 30.0),
                SansBold("Web development", 20.0),
                hBox(height: 20.0),
                Sans(
                  "I build cool, responsive websites that look awesome on any device.",
                  15.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(
                  imagePath: "assets/app.png",
                  width: 200.0,
                  reverse: true,
                ),
                hBox(height: 30.0),
                SansBold("App development", 20.0),
                hBox(height: 20.0),
                Sans(
                  "I create smooth, fast apps for iOS and Android that users love.",
                  15.0,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedCard(imagePath: "assets/firebase.png", width: 200.0),
                hBox(height: 30.0),
                SansBold("Back-end development", 20.0),
                hBox(height: 20.0),
                Sans(
                  "I design strong back-end systems that make apps and websites run like a dream.",
                  15.0,
                ),
              ],
            ),
            hBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
