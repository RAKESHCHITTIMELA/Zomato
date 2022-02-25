import 'package:flutter/material.dart';
import 'package:zomato/Screens/Home.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool value = false;
  int val = 3;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 15, 0, 10),
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
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20, top: 5),
                  child: const Text(
                    'Pay Rs.234',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 20, top: 5),
                  child: const Text(
                    'Payment Options',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Row(
                        children: const [
                          Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Wallet')
                        ],
                      ),
                      leading: Radio(
                        value: 1,
                        groupValue: val,
                        onChanged: (val) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: const [
                          Icon(
                            Icons.branding_watermark,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Net Banking')
                        ],
                      ),
                      leading: Radio(
                        value: 2,
                        groupValue: val,
                        onChanged: (val) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: const [
                          Icon(
                            Icons.credit_card,
                            color: Colors.lightBlueAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Debit/Credit Card')
                        ],
                      ),
                      leading: Radio(
                        value: 3,
                        groupValue: val,
                        onChanged: (val) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: const [
                          Icon(
                            Icons.price_change_sharp,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Cash on delivery')
                        ],
                      ),
                      leading: Radio(
                        value: 4,
                        groupValue: val,
                        onChanged: (val) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                Card(
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                    elevation: 3,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text(
                              'Add Card',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Name on card',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Card Number',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 10, 15, 10),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'Expiry date (MM/YY)',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(25, 10, 20, 10),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      labelText: 'CVV',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                },
                              ),
                              const Text('Save this card details securely')
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
