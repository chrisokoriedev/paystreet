import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildBillPaymentIcon(
                              Icons.phone_android, 'Buy Airtime'),
                          _buildBillPaymentIcon(Icons.data_usage, 'Buy Data'),
                          _buildBillPaymentIcon(Icons.tv, 'Cable TV'),
                          _buildBillPaymentIcon(
                              Icons.electric_bike, 'Electricity'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildBillPaymentIcon(Icons.group, 'Become an Agent'),
                          _buildBillPaymentIcon(
                              Icons.school, 'Education Payment'),
                          _buildBillPaymentIcon(
                              Icons.attach_money, 'Withdraw Funds'),
                          _buildBillPaymentIcon(Icons.payment, 'Ask4 Pay'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Transactions',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                _buildTransactionItem(Icons.shopping_cart, 'Shopping',
                    '-\$500.00', '12 May 2023, 09:00'),
                _buildTransactionItem(Icons.transfer_within_a_station,
                    'Transfer', '+\$2,800.00', '10 May 2023, 10:45'),
                _buildTransactionItem(Icons.event_seat, 'Concert Ticket',
                    '-\$170.00', '08 May 2023, 18:30'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBillPaymentIcon(IconData icon, String label) {
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 24.0,
            backgroundColor: Colors.blue.shade100,
            child: Icon(icon, size: 32.0, color: Colors.blue.shade600),
          ),
          const SizedBox(height: 8.0),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionItem(
      IconData icon, String title, String amount, String date) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade100,
        child: Icon(icon, color: Colors.blue.shade600),
      ),
      title: Text(title),
      subtitle: Text(date),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amount.startsWith('-') ? Colors.red : Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
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
