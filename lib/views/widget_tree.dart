import 'package:flutter/material.dart';
import 'package:ltdd_tieuluan/data/notifier.dart';
import 'package:ltdd_tieuluan/views/pages/home_page.dart';
import 'package:ltdd_tieuluan/views/pages/bmi_page.dart';
import 'package:ltdd_tieuluan/views/pages/profile_page.dart';
import 'package:ltdd_tieuluan/views/widgets/bottombar_widget.dart';
import 'package:ltdd_tieuluan/views/widgets/dialog_widget.dart';

List<Widget> pages = [HomePage(), IbmPage(), ProfilePage()];

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DemoState();
  }
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Center(
          child: Row(
            children: [
              Container(
                height: 65,
                width: 65,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/elonmusk.avif', fit: BoxFit.cover),
              ),
              SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Elon Musk',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Pro Account',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.light_mode, size: 25)),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext dialogContext) {
                  return SettingDialogWidget();
                },
              );
            },
            icon: Icon(Icons.settings, size: 25),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          shadowColor: const Color.fromARGB(255, 92, 132, 152),
          backgroundColor: const Color.fromARGB(53, 37, 37, 37),
          child: Column(
            children: [
              Text(
                'Thêm cái dì đó dô đây đi DANH',
                style: TextStyle(color: Colors.red, fontSize: 50),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(232, 232, 232, 1),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: BottombarWidget(),
    );
  }
}
