import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/Home.dart';

class AppBarForGoldScreen extends StatelessWidget {
  const AppBarForGoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myColor = const Color.fromRGBO(255, 215, 0, 1.5);
    return Container(
        color: myColor,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                    child: const Icon(
                      Icons.arrow_back_rounded,
                    )),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Block C, Sector 63, Noida',
                  style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const Spacer(),
                const Icon(
                  Icons.location_searching_outlined,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipOval(
                        child: Image.asset(
                      CustomImages.person,
                      height: 30,
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              // autofocus: false,

              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: 'Search for restaurents and cuisines...',
                prefixIcon: const Icon(
                  Icons.all_out_rounded,
                  color: Colors.green,
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ));
  }
}
