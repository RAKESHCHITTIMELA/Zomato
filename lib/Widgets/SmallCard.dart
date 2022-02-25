import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';

class SmallCard extends StatelessWidget {
  final String name;
  final String image;

  const SmallCard({Key? key, required this.name, required this.image})
      : super(key: key);
  // const SmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 5, 5, 5),
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              name,
            )
          ],
        ),
      ),
    );
  }
}
