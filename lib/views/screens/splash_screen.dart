import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 1.6,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: height / 1.6,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(width * 0.20),
                    ),
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: width * 0.20,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 2.666,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 2.666,
                width: width,
                padding: EdgeInsets.only(
                    top: height * 0.040, bottom: height * 0.030),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width * 0.20),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Learning is everything",
                      style: TextStyle(
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.100,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/home_page');
                      },
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurpleAccent),
                        shape: MaterialStatePropertyAll(
                          BeveledRectangleBorder(),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
