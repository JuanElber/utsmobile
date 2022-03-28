import 'package:flutter/material.dart';
import 'package:uts/utils/styles.dart';

Widget labelAndTextField(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 150,
        child: Text(
          text,
          style: normal,
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      SizedBox(
        width: 150,
        height: 35,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.hardEdge,
          child: const TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
            ),
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget priceTag(String month, String price) {
  return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            month,
            textAlign: TextAlign.center,
            style: normal,
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                'assets/priceTag.png',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  price,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ));
}

Widget menuContainer(String image, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Container(
      padding: const EdgeInsets.all(10),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(color: lightBlueBackgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/' + image,
            height: 110,
          ),
          Text(
            text,
            style: titleInsideContainer,
          ),
        ],
      ),
    ),
  );
}
