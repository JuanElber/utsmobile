import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uts/utils/styles.dart';
import 'package:uts/utils/widgets.dart';

class Menu3 extends StatelessWidget {
  static const routeName = '/menu3';

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
                menuContainer('option.png', 'OPTION'),
                menuContainer('service.png', 'CUSTOMER CARE'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName('/menu'),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'MENU',
                          style: normal,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonBlueColor),
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
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName('/login'),
                        );
                      },
                      child: Text(
                        'LOGOUT',
                        style: normal,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonRedColor),
                        shape:
                            MaterialStateProperty.all<BeveledRectangleBorder>(
                          BeveledRectangleBorder(
                            side: BorderSide(color: borderColor, width: 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
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
