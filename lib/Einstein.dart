import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Einstein extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/einstein_images/albert1.jpeg",
      "assets/einstein_images/albert2.jpeg",
      "assets/einstein_images/albert3.jpeg",
      "assets/einstein_images/albert4.jpeg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Albert Einstein",
          style: GoogleFonts.anton(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        RichText(
            text: TextSpan(
                text: 'Albert Einstein',
                style: GoogleFonts.anton(
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    fontSize: 24),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url =
                        "https://en.wikipedia.org/wiki/Albert_Einstein";
                    var urllaunchable = await canLaunch(
                        url); //canLaunch is from url_launcher package
                    if (urllaunchable) {
                      await launch(
                          url); //launch is from url_launcher package to launch URL
                    } else {
                      print("URL can't be launched.");
                    }
                  },
                children: [
              TextSpan(
                  text:
                      " (14 March 1879 – 18 April 1955) was a German-born American scientist."
                      "He received the Nobel Prize in Physics in 1921 for theoretical physics.",
                  style: GoogleFonts.anton(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      decoration: TextDecoration.none))
            ])),
        CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder: (context, itemIndex, realIndex) {
              return Container(
                  height: size.height * 0.3,
                  margin: EdgeInsets.all(4),
                  child: Image(
                    image: AssetImage(items[itemIndex]),
                  ));
            },
            options: CarouselOptions(
                autoPlay: true,
                height: size.height * 0.3,
                viewportFraction: 1)),
        SizedBox(
          height: size.height * 0.05,
        ),
        Lottie.asset("assets/lottie_animations/photoelectric.json",
            animate: true, repeat: true, height: size.height * 0.4)
      ]),
    );
  }
}
