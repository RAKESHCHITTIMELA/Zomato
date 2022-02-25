import 'package:flutter/material.dart';
import 'package:zomato/Constants/CustomImages.dart';
import 'package:zomato/Screens/Home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Home()));
                        },
                        child: Container(
                          height: 48,
                          margin: const EdgeInsets.all(30),
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'zomato',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    CustomImages.spashImage,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.fromLTRB(30, 40, 30, 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.facebook_rounded,
                              color: Colors.blue,
                              size: 40,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Continue with Facebook'),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.fromLTRB(30, 5, 30, 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              CustomImages.google,
                              height: 40,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Continue with Google'),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home()));
                    },
                    child: Container(
                      height: 48,
                      margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.mail_rounded,
                              color: Colors.red,
                              size: 40,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Continue with Mail'),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('By continuing, you agree to our'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Terms of service, Privacy policy, Content policy',
                    style: TextStyle(
                        fontFamily: 'roboto', fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
