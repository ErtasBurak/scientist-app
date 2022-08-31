import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Turing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/turing_images/turing-1.jpg",
      "assets/turing_images/turing-2.jpg",
      "assets/turing_images/turing-3.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alan Mathison Turing",
          style: GoogleFonts.xanhMono(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Lottie.asset("assets/lottie_animations/turing.json",
            animate: true, repeat: true, height: size.height * 0.4),
        RichText(
            text: TextSpan(
                text: 'Alan Mathison Turing',
                style: GoogleFonts.xanhMono(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url = "https://en.wikipedia.org/wiki/Alan_Turing";
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
                      " (23 June 1912 – 7 June 1954) was an English mathematician, computer scientist, logician, cryptanalyst, philosopher, and theoretical biologist.Turing was highly influential in the development of theoretical computer science, providing a formalisation of the concepts of algorithm and computation with the Turing machine, "
                      "which can be considered a model of a general-purpose computer.He is widely considered to be the father of theoretical computer science and artificial intelligence.",
                  style: GoogleFonts.xanhMono(
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
