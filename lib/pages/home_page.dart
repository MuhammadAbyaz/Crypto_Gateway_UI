import 'package:crypto_gateway/colors/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Gateway"),
        centerTitle: false,
        backgroundColor: secondaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.grey
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage("images/bitcoin.png"),
                    )),
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.grey
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("images/ethereum.png"),
                      )),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
            width: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.grey
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("images/dodge_coin.png"),
                      )),
                ),
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.grey
                      )
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Image(
                        image: AssetImage("images/binance_coin.png"),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
