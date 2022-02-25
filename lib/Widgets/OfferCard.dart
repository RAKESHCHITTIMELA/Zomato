import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  final String name;
  final String image;
  final Color color1;
  final Color color2;

  const OfferCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.color1,
      required this.color2})
      : super(key: key);
  // const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              color1,
              color2,
            ],
          )),
      // color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Row(children: [
        Container(
          // margin: EdgeInsets.only(left: 250),
          height: 100,
          width: 100,
          child: ClipOval(
              child: Image.asset(
            image,
            fit: BoxFit.cover,
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Text(
              'Code: ZFGDHGHJB',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              'Discount on first three orders',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        )
      ]),
    );
  }
}
