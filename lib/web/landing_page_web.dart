import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solomon_zhao_portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPath,
        colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
        width: 35.0,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

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
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: PageDesignColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 15.0,
                      ),
                      child: SansBold("Hello, I'm", 15.0),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("Solomon Zhao", 55.0),
                    Sans("Flutter developer", 30.0),
                    SizedBox(height: 15.0),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 20.0),
                        Sans("Solomon-zhao@hotmail.com", 15.0),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(width: 20),
                        Sans("+86 133 3299 0449", 15.0),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 20.0),
                        Sans("SHENZHEN", 15.0),
                      ],
                    ),
                  ],
                ),
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
          ),
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/web.jpg",
                    height: widthDevice / 1.7,
                  ),
                ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ],
            ),
          ),
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: 'assets/webL.png',
                      text: "Web Development",
                    ),
                    AnimatedCard(
                      imagePath: 'assets/app.png',
                      text: "App Development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: 'assets/firebase.png',
                      text: "Back-end Development",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact Me", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          containerWidth: 350.0,
                          hintText: "Please Enter Your First Name",
                          maxLine: 1,
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Email",
                          containerWidth: 350.0,
                          hintText: "Please Enter Your Email",
                          maxLine: 1,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          containerWidth: 350.0,
                          hintText: "Please Enter Your Last Name",
                        ),
                        SizedBox(height: 15.0),
                        TextForm(
                          heading: "Phone Number",
                          containerWidth: 350.0,
                          hintText: "Please Enter Your Phone Number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please Enter Your Message",
                  maxLine: 10,
                ),
                hBox(height: 15.0),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: SansBold("Submit", 20.0),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
