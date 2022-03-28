import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uts/screens/register.dart';
import 'package:uts/utils/styles.dart';
import 'package:uts/utils/widgets.dart';

import 'menu.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';

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
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Login',
                  style: heading1,
                ),
                const SizedBox(
                  height: 150,
                ),
                labelAndTextField('Username'),
                const SizedBox(
                  height: 40,
                ),
                labelAndTextField('Password'),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Register.routeName);
                      },
                      child: Text(
                        'Register',
                        style: normal,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonBlueColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Menu.routeName);
                      },
                      child: Text(
                        'NEXT',
                        style: normal,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(buttonBlueColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
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
