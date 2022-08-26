import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'list.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  int _totalDots = 3;
  double _currentPosition = 0.0;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void _updatePosition(int position) {
    setState(() => _currentPosition = _validPosition(position.toDouble()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return OnboardingMethod(context);
          } else {
            return OnboardingMethod(context);
          }
        },
      ),
    );
  }

  Stack OnboardingMethod(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: controller,
          onPageChanged: _updatePosition,
          children: [
            OnboardingScreen(
              Lottie.asset(
                "assets/science3.json",
                repeat: true,
                reverse: true,
                animate: true,
              ),
              [
                const Text(
                  "Science without religion is lame, religion without science is blind. -Albert Einstein",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const Padding(padding: EdgeInsets.all(12.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          controller.jumpToPage(1);
                        });
                      },
                      child: Text("Next"),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0))),
                      ),
                    ),
                  ],
                ),
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
            ),
            OnboardingScreen(
                Lottie.asset(
                  "assets/science2.json",
                  repeat: true,
                  reverse: true,
                  animate: true,
                ),
                [
                  const Text(
                    "If your hate could be turned into electricity, it would light up the whole world. -Nikola Tesla",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(12.0)),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        controller.jumpToPage(2);
                      });
                    },
                    child: const Text("Next"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                    ),
                  ),
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
                ]),
            OnboardingScreen(
                Lottie.asset(
                  "assets/rocketonb.json",
                  repeat: true,
                  reverse: true,
                  animate: true,
                ),
                [
                  const Text(
                    "Now I am become Death, the destroyer of worlds. -J. Robert Oppenheimer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(12.0)),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ListPage()));
                    },
                    child: const Text("SKIP"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                    ),
                  ),
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
                ])
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              dotsCount: 3,
              position: _currentPosition,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
              onTap: (double page) {
                setState(() {
                  controller.animateToPage(page.toInt(),
                      duration: Duration(milliseconds: 300),
                      curve: Curves.ease);
                });
              },
            ))
      ],
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final Widget? image;
  final List<Widget> text;

  const OnboardingScreen(this.image, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return OnboardingMethod2();
        } else {
          return OnboardingMethod2();
        }
      },
    );
  }

  Container OnboardingMethod2() {
    return Container(
      child: Column(
        children: [
          if (image != null)
            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 10,
                    child: image!,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              flex: 2,
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: text),
            ),
          ),
        ],
      ),
    );
  }
}
