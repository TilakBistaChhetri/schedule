// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'widgets/vehicle_gridview.dart';
// import 'widgets/trip_troggle_button.dart';

// class SchedulePage extends StatefulWidget {
//   SchedulePage({super.key});

//   @override
//   State<SchedulePage> createState() => _SchedulePageState();
// }

// class _SchedulePageState extends State<SchedulePage> {
//   final TextEditingController pickupdateController = TextEditingController();
//   final TextEditingController pickuptimeController = TextEditingController();
//   final TextEditingController fromController = TextEditingController();
//   final TextEditingController toController = TextEditingController();
//   final TextEditingController additionalController = TextEditingController();

//   final List<Map<String, dynamic>> dashboardData = [
//     {
//       'title': 'Car',
//       'number': '4',
//       'image': 'assets/images/car.png',
//       'icon': Icons.person, // Corrected icon
//     },
//     {
//       'title': 'Bike',
//       'number': '2',
//       'image': 'assets/images/bike.png',
//       'icon': Icons.person, // Corrected icon
//     },
//     {
//       'title': 'Scooter',
//       'number': '1',
//       'image': 'assets/images/scooter.png',
//       'icon': Icons.person, // Corrected icon
//     },
//   ];

//   Widget buildTextField(String label, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         label.text.bold.size(16.sp).make(),
//         8.h.heightBox,
//         TextField(
//           controller: controller,
//           decoration: InputDecoration(
//             hintText: label,
//             border: OutlineInputBorder(),
//             contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//           ),
//         ),
//       ],
//     );
//   }

//   final ValueNotifier<int> button = ValueNotifier(0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//             appBar: AppBar(
//         centerTitle: true,
//         title: 'App Name'.text.color(Colors.blue).size(24).make(),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               5.h.heightBox,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildOutlinedButton(
//                     onPressed: () => button.value = 0,
//                     imagePath: 'assets/icons/clock.png',
//                     text: "One Time",
//                   ),
//                   _buildOutlinedButton(
//                     onPressed: () => button.value = 1,
//                     imagePath: 'assets/icons/calender.png',
//                     text: "Customize",
//                   ),
//                 ],
//               ),
//               'Select your vehicles'.text.bold.size(16.sp).make(),
//               10.h.heightBox,

//               // GridView for DashboardItems
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3, // Number of items per row
//                   mainAxisSpacing: 12,
//                   crossAxisSpacing: 12,
//                 ),
//                 itemCount: dashboardData.length,
//                 itemBuilder: (context, index) {
//                   final item = dashboardData[index];
//                   return DashboardItem(
//                     title: item['title'],
//                     number: item['number'],
//                     image: item['image'],
//                     icon: item['icon'],
//                   );
//                 },
//               ),
//               20.h.heightBox,
//               ValueListenableBuilder(
//                 valueListenable: button,
//                 builder: (context, value, child) {
//                   if (value == 1) {
//                     return TripToggleButton();
//                   } else {
//                     return SizedBox.shrink();
//                   }
//                 },
//               ),
//               'Schedule your ride'.text.bold.size(16.sp).make(),
//               10.h.heightBox,
//               buildTextField('Pickup Date', pickupdateController),
//               10.h.heightBox,
//               buildTextField('Pickup Time', pickuptimeController),
//               10.h.heightBox,
//               buildTextField('IT, Plaza, Kathmandu', fromController),
//               10.h.heightBox,
//               buildTextField('Destination', toController),
//               10.h.heightBox,
//               buildTextField('Additional Info', additionalController),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildOutlinedButton({required VoidCallback onPressed, required String imagePath, required String text}) {
//     return OutlinedButton(
//       onPressed: onPressed,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             imagePath,
//             height: 19.5,
//             width: 19.5,
//           ),
//           SizedBox(width: 8),
//           Text(text, style: TextStyle(fontSize: 12)),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:schedulingapp/presentation/pages/schedule/widgets/vehicle_gridview.dart'
//     show VehicleGridView;
// import 'package:velocity_x/velocity_x.dart';

// import 'widgets/trip_troggle_button.dart';

// class SchedulePage extends StatefulWidget {
//   SchedulePage({super.key});

//   @override
//   State<SchedulePage> createState() => _SchedulePageState();
// }

// class _SchedulePageState extends State<SchedulePage> {
//   final List<Map<String, dynamic>> dashboardData = [
//     {
//       'title': 'Car',
//       'number': '4',
//       'value': 'assets/images/car.png',
//       'icon': Icons.person,
//     },
//     {
//       'title': 'Scooter',
//       'number': '1',
//       'value': 'assets/images/scooter.png',
//       'icon': Icons.person,
//     },
//     {
//       'title': 'Bike',
//       'number': '1',
//       'value': 'assets/images/bike.png',
//       'icon': Icons.person,
//     },
//   ];

//   final TextEditingController pickupdateController = TextEditingController();

//   final TextEditingController pickuptimeController = TextEditingController();

//   final TextEditingController fromController = TextEditingController();

//   final TextEditingController toController = TextEditingController();

//   final TextEditingController additionalController = TextEditingController();

//   Widget buildTextField(String label, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         label.text.bold.size(16.sp).make(),
//         8.h.heightBox,
//         TextField(
//           controller: controller,
//           decoration: InputDecoration(
//             hintText: label,
//             border: OutlineInputBorder(),
//             contentPadding: const EdgeInsets.symmetric(
//               horizontal: 12,
//               vertical: 10,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   final ValueNotifier<int> button = ValueNotifier(0);
//    final ValueNotifier<int> trip = ValueNotifier(0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: 'App Name'.text.color(Colors.blue).size(24).make(),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               5.h.heightBox,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   OutlinedButton(
//                     onPressed: () {
//                       button.value = 0;
//                     },
//                     child: Text("Nepal"),
//                   ),
//                   OutlinedButton(
//                     onPressed: () {
//                       button.value = 1;
//                     },
//                     child: Text("abc"),
//                   ),
//                 ],
//               ),
//               'Select your vehicles'.text.bold.size(16.sp).make(),
//               10.h.heightBox,

//               // Using the custom widget for GridView
//               VehicleGridView(dashboardData: dashboardData),

//               20.h.heightBox,
//               ValueListenableBuilder(
//                 valueListenable: button,
//                 builder: (context, value, child) {
//                   if (value == 1) {
//                     return TripToggleButton();
//                   } else {
//                     return SizedBox.shrink();
//                   }
//                 },
//               ),
//                        TripToggleButton(
//   onPressed: () {
//     trip.value = 0;
//   },
//   child: Text('Toggle Trip', style: TextStyle(fontSize: 16)),
// ),
//               TripToggleButton(
//   onPressed: () {
//     trip.value = 1; 
//   },
//   child: Text('Toggle Trip', style: TextStyle(fontSize: 16)),
// ),

//               'Schedule your ride'.text.bold.size(16.sp).make(),
//               10.h.heightBox,
//               buildTextField('Pickup Date', pickupdateController),
//               10.h.heightBox,
//               buildTextField('Pickup Time', pickuptimeController),
//               10.h.heightBox,
//               buildTextField('IT, Plaza, Kathmandu', fromController),
//               10.h.heightBox,
//               buildTextField('Destination', toController),
//               10.h.heightBox,
//               buildTextField('Additional Info', additionalController),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schedulingapp/presentation/pages/schedule/widgets/vehicle_gridview.dart' show VehicleGridView;
import 'package:velocity_x/velocity_x.dart';

import 'widgets/trip_troggle_button.dart';

class SchedulePage extends StatefulWidget {
  SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final List<Map<String, dynamic>> dashboardData = [
    {
      'title': 'Car',
      'number': '4',
      'value': 'assets/images/car.png',
      'icon': Icons.person,
    },
    {
      'title': 'Scooter',
      'number': '1',
      'value': 'assets/images/scooter.png',
      'icon': Icons.person,
    },
    {
      'title': 'Bike',
      'number': '1',
      'value': 'assets/images/bike.png',
      'icon': Icons.person,
    },
  ];

  final TextEditingController pickupdateController = TextEditingController();
  final TextEditingController pickuptimeController = TextEditingController();
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController additionalController = TextEditingController();

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label.text.bold.size(16.sp).make(),
        8.h.heightBox,
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: label,
            border: OutlineInputBorder(),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
          ),
        ),
      ],
    );
  }

  final ValueNotifier<int> button = ValueNotifier(0);
  final ValueNotifier<int> trip = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: 'App Name'.text.color(Colors.blue).size(24).make(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      button.value = 0;
                    },
                    child: Text("Nepal"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      button.value = 1;
                    },
                    child: Text("abc"),
                  ),
                ],
              ),
              'Select your vehicles'.text.bold.size(16.sp).make(),
              10.h.heightBox,

              // Using the custom widget for GridView
              VehicleGridView(dashboardData: dashboardData),

              20.h.heightBox,


  ValueListenableBuilder<int>(
  valueListenable: button,
  builder: (context, value, child) {
    if (value == 1) {
      return TripToggleButton(); 
    } else {
      return SizedBox.shrink();
    }
  },
),



              'Schedule your ride'.text.bold.size(16.sp).make(),
              10.h.heightBox,
              buildTextField('Pickup Date', pickupdateController),
              10.h.heightBox,
              buildTextField('Pickup Time', pickuptimeController),
              10.h.heightBox,
              buildTextField('IT, Plaza, Kathmandu', fromController),
              10.h.heightBox,
              buildTextField('Destination', toController),
              10.h.heightBox,
              buildTextField('Additional Info', additionalController),
            ],
          ),
        ),
      ),
    );
  }
}
