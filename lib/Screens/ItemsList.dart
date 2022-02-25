import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/Home.dart';
import 'package:zomato/Screens/HotelScreen.dart';
import 'package:zomato/Widgets/CartCard.dart';
import 'package:zomato/Widgets/ItemCard.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const CartCard(),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Home()));
                        },
                        child: const Icon(Icons.arrow_back_rounded)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Home, Block C, Sector 63, Noida',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
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
                SizedBox(
                  height: 600,
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
                            name: 'Dum Biryani',
                            image: CustomImages.biryani4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: 15,
                //     scrollDirection: Axis.vertical,
                //     itemBuilder: (context, index) {
                //       return const ItemCard();
                //     }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
