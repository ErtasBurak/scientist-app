import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Oppenheimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/oppenheimer_images/oppenheimer-1.jpg",
      "assets/oppenheimer_images/oppenheimer-2.jpg",
      "assets/oppenheimer_images/oppenheimer-3.jpg",
      "assets/oppenheimer_images/oppenheimer-4.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "J. Robert Oppenheimer",
          style: GoogleFonts.cardo(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Lottie.asset("assets/lottie_animations/rocketopp.json",
            animate: true, repeat: true, height: size.height * 0.4),
        RichText(
            text: TextSpan(
                text: 'J. Robert Oppenheimer',
                style: GoogleFonts.cardo(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url =
                        "https://en.wikipedia.org/wiki/J._Robert_Oppenheimer";
                    var urllaunchable = await canLaunch(url);
                    if (urllaunchable) {
                      await launch(url);
                    } else {
                      print("URL can't be launched.");
                    }
                  },
                children: [
              TextSpan(
                  text:
                      " (April 22, 1904 – February 18, 1967) was an American theoretical physicist. A professor of physics at the University of California, Berkeley, "
                      "Oppenheimer was the wartime head of the Los Alamos Laboratory and is often credited as the 'father of the atomic bomb' for his role in the Manhattan Project – the World War II undertaking that developed the first nuclear weapons.",
                  style: GoogleFonts.cardo(
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none))
            ])),
        SizedBox(height: size.height * 0.02),
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
      ]),
    );
  }
}
