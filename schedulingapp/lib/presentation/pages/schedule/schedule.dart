import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schedulingapp/core/constants/my_strings.dart';
import 'package:schedulingapp/presentation/common_widgets/primary_button.dart';
import 'package:schedulingapp/presentation/pages/schedule/widgets/vehicle_gridview.dart'
    show VehicleGridView;
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/my_colors.dart';
import '../../common_widgets/custom_textfield.dart';
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
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();

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
                  _buildOutlined(
                    onPressed: () {
                      button.value = 0;
                    },
                    imagePath: 'assets/icons/clock.png',
                    text: 'One Time',
                  ),
                  _buildOutlined(
                    onPressed: () {
                      button.value = 1;
                    },
                    imagePath: 'assets/icons/calender.png',
                    text: 'Customize',
                  ),
                ],
              ),

              'Select your vehicles'.text.bold.size(16.sp).make(),
              10.h.heightBox,
              VehicleGridView(dashboardData: dashboardData),

              20.h.heightBox,
              ValueListenableBuilder<int>(
                valueListenable: button,
                builder: (context, value, child) {
                  if (value == 1) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Nepal '.text.bold
                            .size(16.sp)
                            .make(), // The styled text widget
                        TripToggleButton(),
                      ],
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),

              'Schedule your ride'.text.bold.size(16.sp).make(),
              10.h.heightBox,
              CustomTextField(
                pickupdateController: TextEditingController(),
                pickuptimeController: TextEditingController(),
                fromController: TextEditingController(),
                toController: TextEditingController(),
                additionalController: TextEditingController(),
              ),
              Center(
                child: PrimaryButton(title: "Changes prices", onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOutlined({
    required VoidCallback onPressed,
    required String imagePath,
    required String text,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imagePath, height: 20, width: 20),
          SizedBox(width: 8),
          Text(text), //
        ],
      ),
    );
  }
}

  



