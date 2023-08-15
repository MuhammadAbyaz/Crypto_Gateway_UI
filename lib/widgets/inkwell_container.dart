import 'package:flutter/material.dart';
import '../colors/colors.dart';
import '../pages/buying_page.dart';

int counter = 0;

class InkWellContainer extends StatefulWidget {
  final String iconAddress;
  const InkWellContainer({
    super.key,
    required this.iconAddress,
  });

  @override
  State<InkWellContainer> createState() => _InkWellContainerState();
}

class _InkWellContainerState extends State<InkWellContainer> {
  void navigateToBuying() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BuyPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        if (widget.iconAddress == "images/bitcoin.png")
          {
            counter = 1,
          }
        else if (widget.iconAddress == "images/ethereum.png")
          {
            counter = 2,
          }
        else if (widget.iconAddress == "images/dodge_coin.png")
          {
            counter = 3,
          }
        else if (widget.iconAddress == "images/binance_coin.png")
          {
            counter = 4,
          },
        navigateToBuying(),
      },
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: primaryColor,
          boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.grey)],
          borderRadius: BorderRadius.all(Radius.circular(23)),
        ),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Image(
              image: AssetImage(widget.iconAddress),
            )),
      ),
    );
  }
}
