import 'package:flutter/material.dart';
import 'package:ltdd_tieuluan/data/notifier.dart';

class BottombarWidget extends StatefulWidget {
  const BottombarWidget({super.key});

  @override
  State<BottombarWidget> createState() => _BottombarWidgetState();
}

class _BottombarWidgetState extends State<BottombarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.calculate_outlined),
              label: 'IBM Caculator',
            ),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
