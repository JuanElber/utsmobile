import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uts/utils/styles.dart';
import 'package:uts/utils/widgets.dart';

import 'menu3.dart';

class Menu2 extends StatelessWidget {
  static const routeName = '/menu2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                menuContainer('youtube.png', 'YOUTUBE'),
                menuContainer('spotify.png', 'SPOTIFY'),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(color: lightBlueBackgroundColor),
                    child: Image.asset(
                      'assets/netflix.png',
                      height: 110,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.navigate_before,
                        size: 40,
                        color: almostBlack,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menu3(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.navigate_next,
                        size: 40,
                        color: almostBlack,
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
