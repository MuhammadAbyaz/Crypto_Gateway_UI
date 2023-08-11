import 'package:crypto_gateway/colors/colors.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  void navigateToHome() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 24,
                height: 24,
              ),
              const Text(
                "Enter the Crypto World",
                style: TextStyle(
                    fontSize: 75,
                    letterSpacing: 2,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean imperdiet consectetur sapien, in tempus urna accumsan quis. Proin ac est nunc.",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 50,
              ),
              const Divider(),
              const SizedBox(
                height: 23,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    onTap: navigateToHome,
                    child: Container(
                      height: 50,
                      width: 125,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: secondaryColor,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: navigateToHome,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      height: 50,
                      width: 125,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border(
                            top: BorderSide(width: 2),
                            bottom: BorderSide(width: 2),
                            right: BorderSide(width: 2),
                            left: BorderSide(width: 2)),
                        color: primaryColor,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
