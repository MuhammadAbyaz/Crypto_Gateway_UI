import 'package:flutter/material.dart';

import '../colors/colors.dart';

class InKWellButton extends StatefulWidget {
  final IconData? icon;
  const InKWellButton({super.key, required this.icon});

  @override
  State<InKWellButton> createState() => _InKWellButtonState();
}

class _InKWellButtonState extends State<InKWellButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 100,
        width: 80,
        decoration: const BoxDecoration(
          color: primaryColor,
          boxShadow: [BoxShadow(blurRadius: 5.0, color: Colors.grey)],
          borderRadius: BorderRadius.all(Radius.circular(23)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(
            widget.icon,
            color: secondaryColor,
          ),
        ),
      ),
    );
  }
}
