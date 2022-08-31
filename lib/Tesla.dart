import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Tesla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/tesla_images/tesla2.jpeg",
      "assets/tesla_images/tesla3.jpeg",
      "assets/tesla_images/tesla4.jpeg",
      "assets/tesla_images/tesla5.jpeg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nikola Tesla",
          style: GoogleFonts.ballet(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
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
        RichText(
            text: TextSpan(
                text: 'Nikola Tesla',
                style: GoogleFonts.ballet(
                    decoration: TextDecoration.underline,
                    color: Colors.green,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url = "https://en.wikipedia.org/wiki/Nikola_Tesla";
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
                      " 10 July [O.S. 28 June] 1856 – 7 January 1943) was a Serbian-American inventor, electrical engineer, mechanical engineer, "
                      "and futurist best known for his contributions to the design of the modern alternating current (AC) electricity supply system.",
                  style: GoogleFonts.ballet(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none))
            ])),
        SizedBox(
          height: size.height * 0.05,
        ),
        Lottie.asset("assets/lottie_animations/acdc.json",
            animate: true, repeat: true, height: size.height * 0.4)
      ]),
    );
  }
}
