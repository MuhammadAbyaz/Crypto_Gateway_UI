import 'package:crypto_gateway/colors/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/inkwell_container.dart';

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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWellContainer(
                iconAddress: "images/bitcoin.png",
              ),
              InkWellContainer(
                iconAddress: "images/ethereum.png",
              ),
            ],
          ),
          SizedBox(
            height: 120,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWellContainer(
                iconAddress: "images/dodge_coin.png",
              ),
              InkWellContainer(
                iconAddress: "images/binance_coin.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
