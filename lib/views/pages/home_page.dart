import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> linkanh = ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg'];
  late int tmp = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Center(
              child: Container(
                width: 350,
                height: 220,
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 2,
                      blurRadius: 5, // Độ mờ của bóng
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      linkanh[tmp],
                      width: 400,
                      height: 250,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 80,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (tmp == 0) {
                              tmp = 2;
                            } else if (tmp == 1) {
                              tmp = 0;
                            } else // tmp == 2
                            {
                              tmp = 1;
                            }
                          });
                        },
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 300,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (tmp == 0) {
                              tmp = 1;
                            } else if (tmp == 1) {
                              tmp = 2;
                            } else // tmp == 2
                            {
                              tmp = 0;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('All', style: TextStyle(fontSize: 18)),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Activity',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Running',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Calories',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Steps',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Heart Rate',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Text("   "),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Workout',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 350,
                height: 150,
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 2,
                      offset: Offset(3, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Row(
                      spacing: 27,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '   ●  2400 Kcal',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '   ●  185 minutes',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                '   ●  240 Days',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/gym.gif',
                              width: 150,
                              height: 150,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 30,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            spacing: 70,
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/tim.gif', width: 130),
                                  Text(
                                    '74 BPM ',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          offset: Offset(3, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            spacing: 70,
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/huyetap.gif', width: 130),
                                  Text(
                                    '123/80 mmHg ',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
