import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solomon_zhao_portfolio/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    return Scaffold(
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
          //Intro, First section
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 114.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/cropped_image.png'),
                  ),
                ),
                hBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Solomon Zhao", 40.0),
                    SansBold("Flutter Developer", 20.0),
                  ],
                ),
                hBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    wBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("Solomon-zhao@hotmail.com", 15.0),
                        Sans("+86 133 3299 0449", 15.0),
                        Sans("SHENZHEN, CHINA", 15.0),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          hBox(height: 90.0),

          //About me, Second section
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About Me", 35.0),
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
          hBox(height: 60.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What I do", 35.0),
              AnimatedCard(
                imagePath: "assets/webL.png",
                text: "Web development",
                width: 300.0,
              ),
              hBox(height: 25.0),
              AnimatedCard(
                imagePath: "assets/app.png",
                text: "App Development",
                width: 300.0,
                fit: BoxFit.contain,
                reverse: true,
              ),
              hBox(height: 25.0),
              AnimatedCard(
                imagePath: 'assets/firebase.png',
                text: "Back-end Development",
                width: 300.0,
              ),
              hBox(height: 60.0),
              Wrap(
                runSpacing: 20.0,
                spacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansBold("Contact Me", 35.0),
                  TextForm(
                    heading: "First Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type first name",
                  ),
                  TextForm(
                    heading: "Last Name",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type last name",
                  ),
                  TextForm(
                    heading: "Email",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type email address",
                  ),
                  TextForm(
                    heading: "Phone Number",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Please type phone number",
                  ),
                  TextForm(
                    heading: "Message",
                    containerWidth: widthDevice / 1.4,
                    hintText: "Message",
                    maxLine: 10,
                  ),
                  hBox(height: 15.0),
                  MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: widthDevice / 2.2,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0),
                    onPressed: () {},
                  ),
                ],
              ),
              hBox(height: 20.0),
            ],
          ),

          //Third section, What I do?
        ],
      ),
    );
  }
}
