import 'package:flutter/material.dart';

class TripToggleButton extends StatefulWidget {
  const TripToggleButton({super.key});

  @override
  State<TripToggleButton> createState() => _TripToggleButtonState();
}

class _TripToggleButtonState extends State<TripToggleButton> {
  bool isRoundTrip = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        
          GestureDetector(
            onTap: () {
              setState(() {
                isRoundTrip = false;
              });
            },
            child: Row(
              children: [
                Text(
                  "One way",
                  style: TextStyle(
                    color: isRoundTrip ? Colors.grey : Colors.black,
                    fontWeight:
                        isRoundTrip ? FontWeight.normal : FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_upward,
                  size: 18,
                  color: isRoundTrip ? Colors.grey : Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(width: 1, height: 30, color: Colors.grey),
          const SizedBox(width: 10),
          // Round Trip
          GestureDetector(
            onTap: () {
              setState(() {
                isRoundTrip = true;
              });
            },
            child: Row(
              children: [
                Text(
                  "Round Trip",
                  style: TextStyle(
                    color: isRoundTrip ? Colors.black : Colors.grey,
                    fontWeight:
                        isRoundTrip ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.swap_vert,
                  size: 18,
                  color: isRoundTrip ? Colors.black : Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
