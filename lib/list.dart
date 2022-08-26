import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:scientist_app/Leonardo.dart';
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
        title: Text("Scientists"),centerTitle: true,
        actions: [IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })],
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Einstein()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Color.fromARGB(255, 34, 146, 237),
                child: Row(
                  children: [
                    Lottie.asset("assets/einstein.json"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Albert Einstein",
                      style: TextStyle(color: Colors.lime, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Oppenheimer()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/oppenheimer_images/oppenheimer-1.jpg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "J. Robert Oppenheimer",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Leonardo()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/leonardo_images/leonardo-1.jpg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Leaonardo da Vinci",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Freud()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/freud_images/freud-1.jpg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tesla()));
            },
            child: Container(
                margin: EdgeInsets.all(5),
                height: size.height * 0.1,
                color: Colors.amber[500],
                child: Row(
                  children: [
                    Image.asset("assets/tesla.jpeg"),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Text(
                      "Nikola Tesla",
                      style: TextStyle(color: Colors.green, fontSize: 24),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
