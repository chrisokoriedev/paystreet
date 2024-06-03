import 'package:flutter/material.dart';
import 'package:paystreet/util/colors.dart';
import 'package:paystreet/view/home.dart';

final ValueNotifier<int> _selectedIndex = ValueNotifier<int>(0);

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
     const HomePage(),
      Container(color: AppColor.lightPurpleII),
      Container(color: AppColor.lightGreenIII),
    ];
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _selectedIndex,
        builder: (context, index, child) {
          return screens[index];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _selectedIndex,
        builder: (context, index, child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (selectedIndex) {
              _selectedIndex.value = selectedIndex;
            },
            selectedLabelStyle: const TextStyle(fontSize: 0),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }
}
