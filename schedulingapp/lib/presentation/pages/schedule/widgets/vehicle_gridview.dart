import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class VehicleGridView extends StatelessWidget {
  final List<Map<String, dynamic>> dashboardData;

  VehicleGridView({required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of items per row
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: dashboardData.length,
      itemBuilder: (context, index) {
        final item = dashboardData[index];
        return _buildDashboardItem(item);
      },
    );
  }

  Widget _buildDashboardItem(Map<String, dynamic> item) {
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              ),
              SizedBox(width: 5),
              (item['number'].toString()).text.bold.size(10.sp).make(),
              SizedBox(width: 5),
              Icon(item['icon'], size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
