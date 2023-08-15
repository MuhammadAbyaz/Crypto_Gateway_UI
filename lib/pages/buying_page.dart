import 'package:crypto_gateway/colors/colors.dart';
import 'package:crypto_gateway/widgets/inkwell_button.dart';
import 'package:flutter/material.dart';

import '../widgets/inkwell_container.dart';

late String iconPath;

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  late String currency;
  late String currencyDesignition;
  @override
  Widget build(BuildContext context) {
    if (counter == 1) {
      currency = "Bitcoin";
      currencyDesignition = "BTC";
      iconPath = "images/bitcoin.png";
    } else if (counter == 2) {
      currency = "Ethereum";
      currencyDesignition = "ETH";
      iconPath = "images/ethereum.png";
    } else if (counter == 3) {
      currency = "DodgeCoin";
      currencyDesignition = "DGC";
      iconPath = "images/dodge_coin.png";
    } else if (counter == 4) {
      currency = "BinanceCoin";
      currencyDesignition = "BIC";
      iconPath = "images/binance_coin.png";
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buy Crypto"),
        backgroundColor: secondaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: tertiaryColor,
                maxRadius: 70,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Image(image: AssetImage(iconPath)),
                  ),
                ),
              ),
            ],
          ),
          const Flexible(
            flex: 2,
            child: SizedBox(
              height: 30,
              width: double.infinity,
            ),
          ),
          Text(
            currency,
            style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: secondaryColor),
          ),
          const Flexible(
            flex: 2,
            child: SizedBox(
              height: 30,
              width: double.infinity,
            ),
          ),
          Text(
            currencyDesignition,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: tertiaryColor),
          ),
          const SizedBox(
            height: 30,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "253.053 $currencyDesignition",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "467.797 USD",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "+1.5%",
                    style: TextStyle(color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InKWellButton(icon: Icons.arrow_upward),
              InKWellButton(icon: Icons.arrow_outward),
              InKWellButton(icon: Icons.currency_exchange)
            ],
          ),
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
          InkWell(
            child: Container(
              height: 60,
              width: 350,
              decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "HISTORY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
