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
      /*
      drawer: SafeArea(
      ),*/
      drawer: SafeArea(
        child: Drawer(
          shadowColor: Colors.grey.shade700,
          backgroundColor: Color.fromRGBO(210, 210, 210, 1), // Màu nền sáng hơn một chút
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey.shade800),
                child: Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Image.asset('assets/elonmusk.avif', fit: BoxFit.cover),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.black87),
                title: Text("Home", style: TextStyle(color: Colors.black87, fontSize: 18)),
                onTap: () {
                  selectedPageNotifier.value = 0;
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate, color: Colors.black87),
                title: Text("IBM Calculator", style: TextStyle(color: Colors.black87, fontSize: 18)),
                onTap: () {
                  selectedPageNotifier.value = 1;
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.black87),
                title: Text("Profile", style: TextStyle(color: Colors.black87, fontSize: 18)),
                onTap: () {
                  selectedPageNotifier.value = 2;
                  Navigator.pop(context);
                },
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IbmPage()),
          );
        },
        backgroundColor: Colors.blueGrey.shade800,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
