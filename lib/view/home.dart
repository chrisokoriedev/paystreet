import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paystreet/util/colors.dart';
import 'package:paystreet/util/app_string.dart';

import '../util/widget.dart';

final ValueNotifier hideBalace = ValueNotifier<bool>(false);

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
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: AppColor.lightGrey,
                          foregroundImage: AssetImage(AppString.avatarIcon),
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Current Balance',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            const Gap(5),
                            GestureDetector(
                              onTap: () {
                                hideBalace.value = !hideBalace.value;
                              },
                              child: ValueListenableBuilder(
                                  valueListenable: hideBalace,
                                  builder: (context, hideBalace, child) {
                                    return Icon(
                                      hideBalace
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Colors.white,
                                    );
                                  }),
                            )
                          ],
                        ),
                        const Gap(8),
                        ValueListenableBuilder(
                            valueListenable: hideBalace,
                            builder: (context, hideBalace, child) {
                              return Text(
                                hideBalace ? '**********' : '\$7,860.00',
                                style: const TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              );
                            }),
                        const Gap(11.0),
                        const Row(
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
                      Text('Bill Payments', style: TextStyle(fontSize: 16.0)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const Gap(10),
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 20),
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
                          buildBillPaymentIcon(AppString.agentIcon,
                              AppColor.lightYellow, 'Become\n an Agent'),
                          buildBillPaymentIcon(AppString.eduIcon,
                              AppColor.lightPink, 'Education\nPayment'),
                          buildBillPaymentIcon(AppString.withdrwIcon,
                              AppColor.lightPurpleII, 'Withdraw\nFunds'),
                          buildBillPaymentIcon(AppString.askIcon,
                              AppColor.lightGreenIII, 'Ask4\nPay'),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Transactions',
                        style: TextStyle(fontSize: 16.0)),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                      ),
                    )
                  ],
                ),
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
