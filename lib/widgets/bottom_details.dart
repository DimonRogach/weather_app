import 'package:flutter/material.dart';

class BottomDetails extends StatelessWidget {
  final String textDay;
  final String textTemperature;
  final Icon icon;

  const BottomDetails({
    Key? key,
    required this.textDay,
    required this.textTemperature,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          Container(
            width: 180,
            height: 120,
            color: Colors.redAccent.shade100,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  textDay,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textTemperature,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(width: 10),
                    icon,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
