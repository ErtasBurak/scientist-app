import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Arf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/arf_images/arf-1.jpg",
      "assets/arf_images/arf-2.jpg",
      "assets/arf_images/arf-3.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cahit Arf",
          style: GoogleFonts.laBelleAurore(),
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
                text: 'Cahit Arf',
                style: GoogleFonts.laBelleAurore(
                    decoration: TextDecoration.underline,
                    color: Colors.brown,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url = "https://en.wikipedia.org/wiki/Cahit_Arf";
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
                      "  (11 October 1910 – 26 December 1997) was a Turkish mathematician. He is known for the Arf invariant of a quadratic form in characteristic 2 (applied in knot theory and surgery theory) in topology, the Hasse–Arf theorem in ramification theory, Arf semigroups and Arf rings.",
                  style: GoogleFonts.laBelleAurore(
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none))
            ])),
        SizedBox(height: size.height * 0.02),
        Lottie.asset("assets/lottie_animations/arf.json",
            animate: true, repeat: true, height: size.height * 0.4),
      ]),
    );
  }
}
