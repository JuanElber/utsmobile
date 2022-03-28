import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:uts/utils/styles.dart';
import 'package:uts/utils/widgets.dart';

class Register extends StatelessWidget {
  static const routeName = '/register';

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
                  'REGISTER SITE',
                  style: heading1,
                ),
                const SizedBox(
                  height: 40,
                ),
                labelAndTextField('Username'),
                const SizedBox(
                  height: 10,
                ),
                labelAndTextField('Password'),
                const SizedBox(
                  height: 10,
                ),
                labelAndTextField('Re-Password'),
                const SizedBox(
                  height: 10,
                ),
                labelAndTextField('Email'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    priceTag('1 Month', 'Rp. 50.000'),
                    priceTag('3 Months', 'Rp. 120.000'),
                    priceTag('1 Year', 'Rp. 400.000'),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
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
