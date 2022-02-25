import 'package:flutter/material.dart';
import 'package:zomato/Screens/Home.dart';
import 'package:zomato/Widgets/OrderDetailsCard.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Home()));
                        },
                        child: const Icon(Icons.arrow_back_rounded)),
                    const Icon(
                      Icons.search,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: const [
                      OrderDetailsCard(),
                      OrderDetailsCard(),
                      OrderDetailsCard(),
                      OrderDetailsCard(),
                      OrderDetailsCard(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
