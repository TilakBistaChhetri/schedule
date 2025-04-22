import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? pickupdateController;
  final TextEditingController? pickuptimeController;
  final TextEditingController? fromController;
  final TextEditingController? toController;
  final TextEditingController? additionalController;

  const CustomTextField({
    super.key,
    this.pickupdateController,
    this.pickuptimeController,
    this.toController,
    this.fromController,
    this.additionalController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (pickupdateController != null) ...[
          SizedBox(
            width: 364,
            height: 44,
            child: TextField(
              controller: pickupdateController,
              decoration: InputDecoration(
                hintText: 'Pickup Date',
                prefixIcon: Image.asset(
                  'assets/icons/calender.png',
                  width: 24,
                  height: 22,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],

        if (pickuptimeController != null) ...[
          SizedBox(
            width: 364,
            height: 44,
            child: TextField(
              controller: pickupdateController,
              decoration: InputDecoration(
                hintText: 'Pickup Date',
                prefixIcon: Image.asset(
                  'assets/icons/clock.png',
                  width: 24,
                  height: 22,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
        if (fromController != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'From',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 364,
                height: 44,
                child: TextField(
                  controller: fromController,
                  decoration: InputDecoration(
                    hintText: 'IT, Plaza, Kathmandu ',
                    prefixIcon: Image.asset(
                      'assets/icons/glocation.png',
                      width: 24,
                      height: 22,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],

        if (toController != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'To',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 364,
                height: 44,
                child: TextField(
                  controller: toController,
                  decoration: InputDecoration(
                    hintText: 'Destination',
                    prefixIcon: Image.asset(
                      'assets/icons/rlocation.png',
                      width: 24,
                      height: 22,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],

        if (additionalController != null) ...[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Additional Info',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 364,
                height: 44,
                child: TextField(
                  controller: additionalController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],
      ],
    );
  }
}
