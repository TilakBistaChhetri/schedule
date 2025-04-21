// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../core/constants/my_colors.dart';

// class PrimaryButton extends StatelessWidget {
//   const PrimaryButton({
//     super.key,

//     required this.title,
//     required this.onPressed,
//   });

//   final String title;
//   final VoidCallback onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onPressed,
//       style: ElevatedButton.styleFrom(
//         backgroundColor: MyColors.secondaryColor,
//         minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8.r),
//         ),
//       ),
//       child: Text(
//         title,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 16.sp,
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/my_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.secondaryColor,
        minimumSize: Size(
          125.w, 
          39.h,  
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
