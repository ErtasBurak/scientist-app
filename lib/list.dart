import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:lottie/lottie.dart';
import 'package:scientist_app/Arf.dart';
import 'package:scientist_app/Bell.dart';
import 'package:scientist_app/Curie.dart';
import 'package:scientist_app/Leonardo.dart';
import 'package:scientist_app/Newton.dart';
import 'package:scientist_app/Turing.dart';
import 'package:scientist_app/oppenheimer.dart';

import 'Einstein.dart';
import 'Freud.dart';
import 'Tesla.dart';
import 'main.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        title: Text("Scientists", style: GoogleFonts.pacifico()),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          InkWell(
            onTap: () {
              Get.to(Einstein(),
                  transition: Transition.circularReveal,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    Lottie.asset("assets/lottie_animations/einstein.json"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Albert Einstein",
                      style:
                          GoogleFonts.anton(fontSize: 26, color: Colors.grey),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Tesla(),
                  transition: Transition.size, duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/tesla_images/tesla.jpeg",
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text("Nikola Tesla",
                        style: GoogleFonts.ballet(
                            fontSize: 26,
                            color: Colors.green,
                            fontWeight: FontWeight.bold))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Oppenheimer(),
                  transition: Transition.zoom, duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                          "assets/oppenheimer_images/oppenheimer-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "J. Robert Oppenheimer",
                      style:
                          GoogleFonts.cardo(color: Colors.blue, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Leonardo(),
                  transition: Transition.fade, duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child:
                          Image.asset("assets/leonardo_images/leonardo-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Leonardo da Vinci",
                      style: GoogleFonts.dekko(
                          color: Colors.deepOrange, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Freud(),
                  transition: Transition.topLevel,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/freud_images/freud-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Sigmund Freud",
                      style: GoogleFonts.federant(
                          color: Colors.deepPurple, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Newton(),
                  transition: Transition.fadeIn,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/newton_images/newton-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Isaac Newton",
                      style:
                          GoogleFonts.goldman(color: Colors.cyan, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Bell(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/bell_images/bell-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Alexander Graham Bell",
                      style:
                          GoogleFonts.iceberg(color: Colors.teal, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Turing(),
                  transition: Transition.leftToRightWithFade,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/turing_images/turing-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Alan Mathison Turing",
                      style:
                          GoogleFonts.xanhMono(color: Colors.red, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Curie(),
                  transition: Transition.upToDown,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/curie_images/curie-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Marie Curie",
                      style: GoogleFonts.zcoolKuaiLe(
                          color: Colors.amber, fontSize: 26),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Get.to(Arf(),
                  transition: Transition.cupertinoDialog,
                  duration: Duration(seconds: 2));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/arf_images/arf-1.jpg"),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Cahit Arf",
                      style: GoogleFonts.laBelleAurore(
                          color: Colors.brown, fontSize: 26),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
