import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:solomon_zhao_portfolio/routes.dart';

final PageDesignColor = Colors.tealAccent;

class TabsWeb extends StatefulWidget {
  final String? title;
  final route;
  const TabsWeb({super.key, this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => isSelected = true),
        onExit: (_) => setState(() => isSelected = false),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 300),
          curve: Curves.elasticIn,
          style:
              isSelected
                  ? GoogleFonts.openSans(
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0, -7)),
                    ],
                    fontSize: 25.0,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    decorationColor: PageDesignColor,
                  )
                  : GoogleFonts.openSans(color: Colors.black, fontSize: 20.0),
          child: Text(widget.title!),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final String text;
  final String? route;
  const TabsMobile({required this.text, required this.route, super.key});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20.0, color: Colors.white),
      ),

      onPressed: () {
        Navigator.of(context).pushNamed(widget.route!);
      },
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}

class TextForm extends StatelessWidget {
  final String heading;
  final double containerWidth;
  final String hintText;
  final int? maxLine;
  const TextForm({
    super.key,
    required this.heading,
    required this.containerWidth,
    required this.hintText,
    this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-z A-Z0-9]')),
            ],
            maxLines: maxLine,
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: PageDesignColor),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14.0),
            ),
            validator: (text) {
              if (text != null &&
                  RegExp(r"\bsolomon\b", caseSensitive: false).hasMatch(text)) {
                return "Match Found";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  final String imagePath;
  final String text;
  final BoxFit? fit;
  final bool? reverse;
  final height;
  final width;

  const AnimatedCard({
    super.key,
    required this.imagePath,
    this.text = "",
    this.fit,
    this.reverse,
    this.height,
    this.width,
  });

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _animation = Tween<Offset>(
      begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
      end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30.0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200.0 : widget.height,
                width: widget.width == null ? 200.0 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10.0),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class hBox extends StatelessWidget {
  final height;
  const hBox({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class wBox extends StatelessWidget {
  final width;
  const wBox({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

class urlLauncher extends StatelessWidget {
  final imgPath;
  final url;
  const urlLauncher(this.imgPath, this.url, {super.key});

  @override
  Widget build(BuildContext context) {
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
}
