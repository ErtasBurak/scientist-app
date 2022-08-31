import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Freud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/freud_images/freud-1.jpg",
      "assets/freud_images/freud-2.jpg",
      "assets/freud_images/freud-3.jpg",
      "assets/freud_images/freud-4.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sigmund Freud",
          style: GoogleFonts.federant(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Lottie.asset("assets/lottie_animations/freud.json",
            animate: true, repeat: true, height: size.height * 0.4),
        RichText(
            text: TextSpan(
                text: 'Sigmund Freud',
                style: GoogleFonts.federant(
                    decoration: TextDecoration.underline,
                    color: Colors.deepPurple,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url = "https://en.wikipedia.org/wiki/Sigmund_Freud";
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
                      "  (6 May 1856 – 23 September 1939) was an Austrian neurologist and the founder of psychoanalysis, "
                      "a clinical method for evaluating and treating pathologies in the psyche through dialogue between a patient and a psychoanalyst.",
                  style: GoogleFonts.federant(
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
