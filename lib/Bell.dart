import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Bell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/bell_images/bell-1.jpg",
      "assets/bell_images/bell-2.jpg",
      "assets/bell_images/bell-3.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alexander Graham Bell",
          style: GoogleFonts.iceberg(),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        Lottie.asset("assets/lottie_animations/bell.json",
            animate: true, repeat: true, height: size.height * 0.4),
        RichText(
            text: TextSpan(
                text: 'Alexander Graham Bell',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.teal,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    String url =
                        "https://en.wikipedia.org/wiki/Alexander_Graham_Bell";
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
                      "  (March 3, 1847 - August 2, 1922) was a Scottish-born British-Canadian-American teacher, scientist, and inventor. He was the founder of the Bell Telephone Company. "
                      "In 1876, Bell was the first inventor to patent the telephone, and he helped start the Bell Telephone Company with others in July 1877.",
                  style: GoogleFonts.iceberg(
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
