import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class Leonardo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var items = [
      "assets/leonardo_images/leonardo-1.jpg",
      "assets/leonardo_images/leonardo-2.jpg",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Leonardo da Vinci"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Lottie.asset("assets/lottie_animations/leonardo.json",
            animate: true, repeat: true, height: size.height * 0.4),
        RichText(
            text: TextSpan(
                text: 'Leonardo da Vinci',
                style: TextStyle(
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
                      " was a remarkable scientist. He was studyinh the electricity.",
                  style: TextStyle(
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
