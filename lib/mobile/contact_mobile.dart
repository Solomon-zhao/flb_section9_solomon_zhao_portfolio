import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
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
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        ),
      ),
    );
  }
}
