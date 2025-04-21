import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? pickupdateController;
  final TextEditingController? pickuptimeController;
  final TextEditingController? fromController;
  final TextEditingController? toController;
  final TextEditingController? additionalController;
  // final TextEditingController? descriptionController;
  // final TextEditingController? bidpriceController;
  // final TextEditingController? deadlineController;
  // final TextEditingController? numberofpagesController;
  // final TextEditingController? searchController;

  const CustomTextField({
    super.key,
    this.pickupdateController,
    this.pickuptimeController,
    this.toController,
    this.fromController,
    this.additionalController,
    // this.descriptionController,
    // this.bidpriceController,
    // this.deadlineController,
    // this.numberofpagesController,
    // this.searchController,
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
                prefixIcon: const Icon(Icons.person),
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
              controller: pickuptimeController,
              decoration: InputDecoration(
                hintText: 'PickUp Time',
                // labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
        if (fromController != null) ...[
          SizedBox(
              width: 364, 
            height: 44, 
            child: TextField(
              controller: fromController,
              decoration: InputDecoration(
                hintText: 'IT, Plaza, Kathmandu',
                // labelText: 'Phone',
                prefixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
        if (toController != null) ...[
          SizedBox(
              width: 364, 
            height: 44, 
            child: TextField(
              controller: toController,
              obscureText: true, // for password visibility toggle
              decoration: InputDecoration(
                hintText: 'Destination',
                // labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],

            if (toController != null) ...[
          SizedBox(
              width: 364, 
            height: 44, 
            child: TextField(
              controller: additionalController,
              obscureText: true, // for password visibility toggle
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
     
        // if (descriptionController != null) ...[
        //   TextField(
        //     controller: descriptionController,
        //     decoration: InputDecoration(
        //       hintText: 'Enter your description',
        //       labelText: 'Description',
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(8),
        //         borderSide: BorderSide(color: Colors.blue),
        //       ),
        //       filled: true,
        //       fillColor: Colors.white,
        //     ),
        //   ),
        //   const SizedBox(height: 20),
        // ],
        // if (numberofpagesController != null) ...[
        //   TextField(
        //     controller: numberofpagesController,
        //     decoration: InputDecoration(
        //       hintText: 'Enter number of pages',
        //       labelText: 'Number of Pages',
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(8),
        //         borderSide: BorderSide(color: Colors.blue),
        //       ),
        //       filled: true,
        //       fillColor: Colors.white,
        //     ),
        //   ),
        //   const SizedBox(height: 20),
        // ],
        // if (deadlineController != null) ...[
        //   TextField(
        //     controller: deadlineController,
        //     decoration: InputDecoration(
        //       hintText: 'Enter deadline',
        //       labelText: 'Deadline',
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(8),
        //         borderSide: BorderSide(color: Colors.blue),
        //       ),
        //       filled: true,
        //       fillColor: Colors.white,
        //     ),
        //   ),
        //   const SizedBox(height: 20),
        // ],
        // if (bidpriceController != null) ...[
        //   TextField(
        //     controller: bidpriceController,
        //     decoration: InputDecoration(
        //       hintText: 'Enter bid price',
        //       labelText: 'Bid Price',
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(8),
        //         borderSide: BorderSide(color: Colors.blue),
        //       ),
        //       filled: true,
        //       fillColor: Colors.white,
        //     ),
        //   ),
        //   const SizedBox(height: 20),
        // ],
        // if (searchController != null) ...[
        //   TextField(
        //     controller: searchController,
        //     decoration: InputDecoration(
        //       hintText: 'Search freelancers',
        //       labelText: 'Search',
        //       border: OutlineInputBorder(
        //         borderRadius: BorderRadius.circular(8),
        //         borderSide: BorderSide(color: Colors.blue),
        //       ),
        //       filled: true,
        //       fillColor: Colors.white,
        //     ),
        //   ),
      ],
    );
  }
}
