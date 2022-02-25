import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/TrackScreen.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const TrackScreen()));
      },
      child: Card(
        margin: const EdgeInsets.fromLTRB(5, 15, 5, 10),
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
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
                        CustomImages.biryani1,
                        height: 50,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      Text(
                        'Biryani Lovers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text('Section-41, Noida')
                    ],
                  ),
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
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  'ITEMS',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  '1 * Chicken Biryani',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'ORDERED ON',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  '10 Mar 2021 at 2:12 PM',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  'TOTAL AMOUNT',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20, top: 5),
                child: const Text(
                  'Rs. 214',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'On its way...',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  const Spacer(),
                  Container(
                    height: 20,
                    width: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                          child: Image.asset(
                        CustomImages.delivery,
                        height: 30,
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Track Order'),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
