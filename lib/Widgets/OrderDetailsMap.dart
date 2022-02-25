import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';

class OrderDetailsMap extends StatelessWidget {
  const OrderDetailsMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0))),
      height: 300,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                      child: Image.asset(
                    CustomImages.person,
                    height: 50,
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ravi Kumar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('Red Zomato e-bike HR 2359',
                      style: TextStyle(fontSize: 12))
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.phone_in_talk,
                color: Colors.green,
                size: 30,
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20),
                  child: const Icon(
                    Icons.chat,
                    color: Colors.amber,
                  )),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Ravi Kumar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('Red Zomato e-bike HR 2359',
                      style: TextStyle(fontSize: 12))
                ],
              ),
              const Spacer(),
              const Text(
                'Chat',
                style: TextStyle(fontSize: 13, color: Colors.red),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20),
                child: const Icon(
                  Icons.people,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Share the details with family',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text('and friends', style: TextStyle(fontSize: 12))
                ],
              ),
              const Spacer(),
              const Text(
                'Share',
                style: TextStyle(fontSize: 13, color: Colors.red),
              ),
              const SizedBox(
                width: 20,
              )
            ],
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                color: Colors.white),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20),
                  child: const Icon(
                    Icons.location_searching_outlined,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'LIVE STATUS',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('Your Order is on way', style: TextStyle(fontSize: 15))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
