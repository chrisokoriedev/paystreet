import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:paystreet/util/colors.dart';

Widget buildBillPaymentIcon(String imgUrl, Color iconBg, String label) {
  return Container(
    width: 80.w,
    padding: const EdgeInsets.symmetric(vertical: 13),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 1),
              color: AppColor.lightGrey.withOpacity(0.5))
        ]),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 43.w,
          height: 43.h,
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
              color: iconBg, borderRadius: BorderRadius.circular(10)),
          child: Image.asset(imgUrl),
        ),
        const Gap(8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    ),
  );
}

Widget buildTransactionItem(
    String imgUrl, String title, String amount, String date, Color iconBg) {
  return Container(
    margin: EdgeInsets.only(bottom: 14.sp),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 1),
              color: AppColor.lightGrey.withOpacity(0.5))
        ]),
    child: ListTile(
      leading: Container(
        width: 52.w,
        height: 52.h,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
            color: iconBg, borderRadius: BorderRadius.circular(10)),
        child: Image.asset(imgUrl),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.w400, letterSpacing: 1.4),
      ),
      subtitle: Text(
        date,
        style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            letterSpacing: 1.4),
      ),
      trailing: Text(
        amount,
        style: TextStyle(fontSize: 18.sp, letterSpacing: 1.4),
      ),
    ),
  );
}

class DashboardButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DashboardButton({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff45466D),
        fixedSize: Size(165.w, 70.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16.sp, color: Colors.white),
          ),
          Icon(iconData, color: Colors.white, size: 30.sp),
        ],
      ),
    );
  }
}
