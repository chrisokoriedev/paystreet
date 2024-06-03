import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paystreet/util/colors.dart';
import 'package:paystreet/util/app_string.dart';

import '../util/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade300,
                          child: const Icon(Icons.person, size: 32.0),
                        ),
                        const Gap(8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hi, Esther Bukola',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Good Evening',
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.qr_code_2_outlined,
                            size: 25.0, color: Colors.blue)),
                  ],
                ),
                const Gap(17),
                Card(
                  elevation: 4.0,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Current Balance',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            Gap(5),
                            Icon(
                              Icons.visibility_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Gap(10),
                        Text(
                          '\$7,860.00',
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Gap(11.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DashboardButton(
                                title: 'Fund Account',
                                iconData: Icons.file_download_outlined),
                            DashboardButton(
                                title: 'Internal Transfer',
                                iconData: Icons.redo),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(16.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bill Payments',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 11),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildBillPaymentIcon(AppString.airtimeIcon,
                              AppColor.lightBlue, 'Buy Airtime'),
                          buildBillPaymentIcon(AppString.dataIcon,
                              AppColor.lightGreenII, 'Buy Data'),
                          buildBillPaymentIcon(AppString.cableIcon,
                              AppColor.lightGreen, 'Cable TV'),
                          buildBillPaymentIcon(AppString.lightIcon,
                              AppColor.lightPink, 'Electricity'),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildBillPaymentIcon(AppString.lightIcon,
                              AppColor.lightPink, 'Become\n an Agent'),
                          buildBillPaymentIcon(AppString.eduIcon,
                              AppColor.lightPink, 'Education\nPayment'),
                          buildBillPaymentIcon(AppString.lightIcon,
                              AppColor.lightPink, 'Withdraw\nFunds'),
                          buildBillPaymentIcon(AppString.lightIcon,
                              AppColor.lightPink, 'Ask4\nPay'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Transactions',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )
                  ],
                ),
                const Gap(10.0),
                buildTransactionItem(AppString.shopingIcon, 'Shopping',
                    '-\$500.00', '12 May 2023, 09:00', AppColor.lightPurple),
                buildTransactionItem(AppString.transferIcon, 'Transfer',
                    '+\$2,800.00', '10 May 2023, 10:45', AppColor.lightGrey),
                buildTransactionItem(AppString.ticketIcon, 'Concert Ticket',
                    '-\$170.00', '08 May 2023, 18:30', AppColor.lightGreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
