import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/GoldScreen.dart';
import 'package:zomato/Screens/HotelScreen.dart';
import 'package:zomato/Screens/ItemsList.dart';
import 'package:zomato/Screens/OrdersScreen.dart';
import 'package:zomato/Widgets/ItemCard.dart';
import 'package:zomato/Widgets/OfferCard.dart';
import 'package:zomato/Widgets/SmallCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const GoldScreen()));
    } else if (index == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ItemList()));
    } else if (index == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const OrdersScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.black,
            ),
            label: 'Go Out',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            ),
            label: 'Gold',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_rounded,
              color: Colors.black,
            ),
            label: 'Receipes',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    'Block C, Sector 63, Noida',
                    style: TextStyle(
                        fontFamily: 'roboto',
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Icon(
                    Icons.location_searching_outlined,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.reorder_outlined,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                // autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      borderSide: BorderSide(color: Colors.teal)),
                  hintText: 'Search for restaurents and cuisines...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    OfferCard(
                      image: CustomImages.biryani1,
                      name: '50% OFF',
                      color1: Colors.red,
                      color2: Colors.black,
                    ),
                    OfferCard(
                      image: CustomImages.icecream3,
                      name: '30% OFF',
                      color1: Colors.blue,
                      color2: Colors.black,
                    ),
                    OfferCard(
                      image: CustomImages.pizza,
                      name: '20% OFF',
                      color1: Colors.yellow,
                      color2: Colors.black,
                    ),
                    OfferCard(
                      image: CustomImages.icecream,
                      name: '10% OFF',
                      color1: Colors.orange,
                      color2: Colors.black,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
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
                    SmallCard(image: CustomImages.delivery, name: 'Others'),
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
              //               builder: (context) => const HotelScreen()));
              //         },
              //         child: const ItemCard(),
              //       );
              //     }),
            ],
          ),
        ),
      ),
    ));
  }
}
