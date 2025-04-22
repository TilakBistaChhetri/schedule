import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class VehicleGridView extends StatelessWidget {
  final List<Map<String, dynamic>> dashboardData;

  const VehicleGridView({super.key, required this.dashboardData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w), // Slight padding to fix outer overflow
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w,
          childAspectRatio: 0.85,
        ),
        itemCount: dashboardData.length,
        itemBuilder: (context, index) {
          final item = dashboardData[index];
          return _buildDashboardItem(item);
        },
      ),
    );
  }

  Widget _buildDashboardItem(Map<String, dynamic> item) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            item['value'] ?? '',
            height: 35.h,
            width: 50.w,
            fit: BoxFit.contain,
          ),
          6.h.heightBox,
          // Wrap Row in FittedBox to auto-fit and prevent overflow
          FittedBox(
            child: Row(
              children: [
                Text(
                  item['title'] ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
                4.w.widthBox,
                Text(
                  item['number'].toString(),
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                4.w.widthBox,
                Icon(item['icon'], size: 16.sp),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
