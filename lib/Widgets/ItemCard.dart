import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String image;
  const ItemCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Container(
            // margin: EdgeInsets.only(left: 250),
            height: 80,
            // padding: EdgeInsets.all(10),
            width: 80,

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Pizza, Italian',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const Text(
                'Rs.350 per person | 30 min',
                style: TextStyle(
                  fontSize: 13,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '40% OFF - Use code ZOMATO',
                style: TextStyle(
                    fontSize: 13,
                    // fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: const Text(
              '4.2',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
