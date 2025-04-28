import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
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
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              hBox(height: 30.0),
              SansBold("Contact Me", 40.0),
              hBox(height: 20.0),
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
      ),
    );
  }
}
