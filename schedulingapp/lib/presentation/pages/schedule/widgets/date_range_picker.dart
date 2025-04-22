// import 'package:flutter/material.dart';

// class DateRangePicker extends StatefulWidget {
//   final String startDateLabel;
//   final String endDateLabel;
//   final VoidCallback onStartDateTap;
//   final VoidCallback onEndDateTap;

//   DateRangePicker({
//     required this.startDateLabel,
//     required this.endDateLabel,
//     required this.onStartDateTap,
//     required this.onEndDateTap,
//   });

//   @override
//   _DateRangePickerState createState() => _DateRangePickerState();
// }

// class _DateRangePickerState extends State<DateRangePicker> {
//   String pickupDate = "Pickup Start Date";
//   String pickupEndDate= "Pickup End Date";

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         width: 364,
//         height:44,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.white,
//             foregroundColor: Colors.black,
//             padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
//             side: BorderSide(color: Colors.grey),
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           ),
//           onPressed: () async {
//             DateTime? pickedStartDate = await showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2101),
//             );

//             if (pickedStartDate != null) {
//               setState(() {
//                 pickupDate = "${pickedStartDate.toLocal()}".split(' ')[0];
//               });
//             }

//             DateTime? pickedEndDate = await showDatePicker(
//               context: context,
//               initialDate: DateTime.now(),
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2101),
//             );

//             if (pickedEndDate != null) {
//               setState(() {
//                 pickupEndDate = "${pickedEndDate.toLocal()}".split(' ')[0];
//               });
//             }
//           },


// child: Row(
//   mainAxisSize: MainAxisSize.min,
//   children: [
//     Icon(Icons.calendar_today, color: Colors.green, size: 24), // First icon
//     SizedBox(width: 12),
//     Text(
//       "$pickupDate - $pickupEndDate",
//       style: TextStyle(color: Colors.grey[700]),
//     ),
//     SizedBox(width: 12), 
//     Icon(Icons.calendar_today, color: Colors.green, size: 24), // Second icon (after the text)
//   ],
// ),


//         ),
//       ),
//     );
//   }
// }

