import 'package:flutter/material.dart';
import 'package:zomato/Screens/PaymentScreen.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PaymentScreen()));
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            color: Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '1 ITEM',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Rs.180  plus taxes',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            const Spacer(),
            const Text(
              'View Cart',
              style: TextStyle(color: Colors.white),
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
