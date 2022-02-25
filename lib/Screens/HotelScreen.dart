import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zomato/Screens/Home.dart';
import 'package:zomato/Screens/TrackScreen.dart';
import 'package:zomato/Widgets/CartCard.dart';
import 'package:zomato/Widgets/ItemCard2.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CartCard(),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(children: [
                    InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Home()));
                        },
                        child: const Icon(Icons.arrow_back_rounded)),
                    // Text(''),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hotel Swagath Grand',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Biryani, North Indian, Beverages',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.access_time_filled_rounded,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Opt-in 45 min for free '),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('152 Reviews'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Zomato Gold Members now also enjoy',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.brown),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'One Dish free on every order',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.brown),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'BECOME A GOLD MEMBER ',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 5,
                        ),
                        Text('Gold',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30,
                                color: Colors.amber)),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                          'Delivery to Home (2nd floor, Block-45, Sector-63, Noida-201301) '),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TrackScreen()));
                    },
                    child: const Text(
                      'Live Tracking Available',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontFamily: "poppito"),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 25),
                  child: const Text(
                    'Rs.15 distance fee applicable',
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.blueGrey,
                        ),
                        // color: Colors.white,
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '40% OFF ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Text(
                              ' Use code SAVE50 on order above 99 ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Calibri",
                                  fontWeight: FontWeight.w400),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.blueGrey,
                        ),
                        // color: Colors.white,
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '30% OFF ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Text(
                              ' Use code SAVE20 on order above 99 ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Calibri",
                                  fontWeight: FontWeight.w400),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.blueGrey,
                        ),
                        // color: Colors.white,
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '20% OFF ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                                child: Text(
                              ' Use code SAVE50 on order above 99 ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Calibri",
                                  fontWeight: FontWeight.w400),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'Veg',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.lightGreen,
                      activeTrackColor: Colors.grey,
                      inactiveThumbColor: Colors.redAccent,
                      inactiveTrackColor: Colors.orange,
                    ),
                    const Spacer(),
                    const Icon(Icons.search_sharp)
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Best Sellers',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HotelScreen()));
                          },
                          child: const ItemCard2(),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HotelScreen()));
                          },
                          child: const ItemCard2(),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HotelScreen()));
                          },
                          child: const ItemCard2(),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HotelScreen()));
                          },
                          child: const ItemCard2(),
                        ),
                        InkWell(
                          onTap: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HotelScreen()));
                          },
                          child: const ItemCard2(),
                        ),
                      ],
                    ),
                  ),
                ),
                // ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: 5,
                //     scrollDirection: Axis.vertical,
                //     itemBuilder: (context, index) {
                //       return InkWell(
                //         onTap: () async {
                //           await Navigator.of(context).push(MaterialPageRoute(
                //               builder: (context) => const ItemList()));
                //         },
                //         child: const ItemCard(),
                //       );
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
