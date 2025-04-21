import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constants/my_colors.dart';
import '../../../../core/constants/my_strings.dart';
import 'trip_troggle_button.dart';

class SchedulePageBody extends StatelessWidget {
  SchedulePageBody({super.key});

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
  final ValueNotifier<int> button =  ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:
            MyStrings.appName.text.color(MyColors.primaryColor).size(24).make(),
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
              
            OutlinedButton(onPressed: () {
              button.value =0;
              
      
            },
             child: Text("Nepal")),
      
             //SizedBox(width:4),
      
               OutlinedButton(onPressed: () {
              button.value =1;
              
      
            },
             child: Text("abc")),
              
            ],),
              'Select your vehicles'.text.bold.size(16.sp).make(),
              10.h.heightBox,
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemCount: dashboardData.length,
                itemBuilder: (context, index) {
                  final item = dashboardData[index];
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                      children: [
                        5.h.heightBox,
                        Image.asset(
                          item['value'] ?? '',
                          height: 30,
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        10.h.heightBox,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              item['title'] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                              ),
                            ),
                             SizedBox(width:5),
                            (item['number'].toString()).text.bold
                                .size(10.sp)
                                .make(),
                                SizedBox(width:5),
                            // 5.h.widthBox,
                            Icon(item['icon'], size: 20),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              20.h.heightBox,
              ValueListenableBuilder(
                valueListenable: button,
                builder: (context, value, child)  {
                  if(value == 1) {
                    return TripToggleButton();
                  } else {
                    return SizedBox.shrink();
                  }
      
                }
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
