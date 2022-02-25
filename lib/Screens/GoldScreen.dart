import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/HotelScreen.dart';
import 'package:zomato/Screens/ItemsList.dart';
import 'package:zomato/Widgets/AppBarForGoldScreen.dart';
import 'package:zomato/Widgets/ItemCard.dart';
import 'package:zomato/Widgets/SmallCard.dart';

class GoldScreen extends StatefulWidget {
  const GoldScreen({Key? key}) : super(key: key);

  @override
  _GoldScreenState createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen> {
  Color myColor = const Color.fromRGBO(255, 215, 0, 1.5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.black,
      //   // iconSize: 40,
      //   onTap: _onItemTapped,
      //   elevation: 5,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_bag,
      //         color: Colors.black,
      //       ),
      //       label: 'Order',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.people,
      //         color: Colors.black,
      //       ),
      //       label: 'Go Out',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.chat,
      //         color: Colors.black,
      //       ),
      //       label: 'Gold',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.fastfood_rounded,
      //         color: Colors.black,
      //       ),
      //       label: 'Receipes',
      //     ),
      //   ],
      // ),
      appBar: const PreferredSize(
        child: AppBarForGoldScreen(),
        preferredSize: Size.fromHeight(120.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 215, 0, 1.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'zomato gold',
                          style: TextStyle(
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Get 1+1 on any drinks')
                      ],
                    ),
                    const VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hi Kamal, you are gold member',
                            style: TextStyle(
                              fontFamily: 'roboto',
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Enjoy happy hours between 8pm - 1am at the best bars in your city')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(thickness: 1),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Clubs and Lounges',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SmallCard(
                      image: CustomImages.delivery,
                      name: 'Under 30 min',
                    ),
                    SmallCard(image: CustomImages.cup, name: 'Beverages'),
                    SmallCard(
                        image: CustomImages.trend, name: 'Trending Places'),
                    SmallCard(image: CustomImages.leaf, name: 'Veg Items'),
                    SmallCard(image: CustomImages.star, name: 'Only 5 Star'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Top Brands Around You',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Row(children: const [
                      Icon(
                        Icons.filter_list_outlined,
                      ),
                      Text('Filters'),
                    ]),
                  ),
                  Expanded(
                    child: Container(
                      height: 38,
                      margin: const EdgeInsets.only(right: 5.0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        'Rating: 4.0 +',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      padding: const EdgeInsets.all(7.0),
                      height: 38,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: const Center(
                          child: Text(
                        'Fastest Delivery',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Row(children: const [
                        Text('Rating'),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                        )
                      ]),
                    ),
                  ),
                ],
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
                        child: const ItemCard(
                          name: 'Chicken Pizza',
                          image: CustomImages.pizza,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'Chicken Biryani',
                          image: CustomImages.biryani2,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'Choco Icecream',
                          image: CustomImages.icecream,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'Mutton Biryani',
                          image: CustomImages.biryani3,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'French Fries',
                          image: CustomImages.fries,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'Veg Pizza',
                          image: CustomImages.pizza2,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HotelScreen()));
                        },
                        child: const ItemCard(
                          name: 'Chicken Pizza',
                          image: CustomImages.pizza3,
                        ),
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
              //         child: const ItemCard(
              //           name: 'Dominos Pizza',
              //           image: CustomImages.pizza,
              //         ),
              //       );
              //     }),
              // const ItemCard(),
              // const ItemCard(),
              // const ItemCard(),
            ],
          ),
        ),
      ),
    ));
  }
}
