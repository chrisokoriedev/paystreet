import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget buildBillPaymentIcon(IconData icon, String label) {
  return Container(
    width: 85,
    padding: const EdgeInsets.symmetric(vertical: 13),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 1),
              color: Colors.black12.withOpacity(0.2))
        ]),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 24.0,
          backgroundColor: Colors.blue.shade100,
          child: Icon(icon, size: 32.0, color: Colors.blue.shade600),
        ),
        const Gap(8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget buildTransactionItem(
    String imgUrl, String title, String amount, String date, Color iconBg) {
  return Container(
    margin: const EdgeInsets.only(bottom: 14),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 1),
              color: Colors.black12.withOpacity(0.2))
        ]),
    child: ListTile(
      leading: Container(
        width: 52,
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
            color: iconBg, borderRadius: BorderRadius.circular(10)),
        child: Image.asset(imgUrl),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w300, letterSpacing: 1.4),
      ),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: const TextStyle(fontSize: 18, letterSpacing: 1.4),
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
        fixedSize: const Size(165, 70),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          Icon(iconData, color: Colors.white, size: 30),
        ],
      ),
    );
  }
}
