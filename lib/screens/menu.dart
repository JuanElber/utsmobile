import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uts/utils/styles.dart';
import 'package:uts/utils/widgets.dart';

import 'menu2.dart';

class Menu extends StatelessWidget {
  static const routeName = '/menu';

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
                Text(
                  'Menu',
                  style: heading1,
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          label: const Text('Search'),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: borderColor, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: borderColor, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: borderColor, width: 2.0),
                          )),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                menuContainer('controller.png', 'Games'),
                menuContainer('news.png', 'News'),
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
                      child: Text(
                        'LOGOUT',
                        style: normal,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(grey),
                        shape:
                            MaterialStateProperty.all<BeveledRectangleBorder>(
                          BeveledRectangleBorder(
                            side: BorderSide(color: borderColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Menu2.routeName);
                      },
                      child: Icon(
                        Icons.navigate_next,
                        size: 40,
                        color: grey,
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
