import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 24.0,
                            backgroundColor: Colors.grey.shade300,
                            child: const Icon(Icons.person, size: 32.0),
                          ),
                          const SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hi, Esther Bukola',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Good Evening',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Current Balance',
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.grey.shade600),
                      ),
                      const Text(
                        '\$7,860.00',
                        style: TextStyle(
                            fontSize: 32.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_downward),
                            label: const Text('Fund Account'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.sync),
                            label: const Text('Internal Transfer'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue.shade600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Bill Payments',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: [
                  _buildBillPaymentIcon(Icons.phone_android, 'Buy Airtime'),
                  _buildBillPaymentIcon(Icons.data_usage, 'Buy Data'),
                  _buildBillPaymentIcon(Icons.tv, 'Cable TV'),
                  _buildBillPaymentIcon(Icons.electric_bike, 'Electricity'),
                  _buildBillPaymentIcon(Icons.group, 'Become an Agent'),
                  _buildBillPaymentIcon(Icons.school, 'Education Payment'),
                  _buildBillPaymentIcon(Icons.attach_money, 'Withdraw Funds'),
                  _buildBillPaymentIcon(Icons.payment, 'Ask4 Pay'),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Transactions',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              _buildTransactionItem(Icons.shopping_cart, 'Shopping',
                  '-\$500.00', '12 May 2023, 09:00'),
              _buildTransactionItem(Icons.transfer_within_a_station, 'Transfer',
                  '+\$2,800.00', '10 May 2023, 10:45'),
              _buildTransactionItem(Icons.event_seat, 'Concert Ticket',
                  '-\$170.00', '08 May 2023, 18:30'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBillPaymentIcon(IconData icon, String label) {
    return Column(
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
