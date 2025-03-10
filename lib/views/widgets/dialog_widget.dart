import 'package:flutter/material.dart';

class SettingDialogWidget extends StatelessWidget {
  const SettingDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Done',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: const Color.fromARGB(255, 16, 143, 246),
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 100,
              width: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset('assets/elonmusk.avif', fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: Text(
                      'Health Checklist',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: Text(
                      'Notification',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  Text(
                    'Privacy',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: Text(
                      'Application',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: Text(
                      'Research Survey',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                    ),
                    child: Text(
                      'Device',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AboutDialogWidget();
                            },
                          );
                        },
                        style: TextButton.styleFrom(
                          alignment: Alignment.centerLeft,
                        ),
                        child: Text(
                          'About this app',
                          style: TextStyle(fontSize: 17, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AboutDialog(
      applicationName: 'Health Tracker',
      applicationIcon: Icon(Icons.health_and_safety, color: Colors.red),
      applicationVersion: 'Version : 1.0.0',
      applicationLegalese:
          "© 2025 Health Tracker. All rights reserved.\n\n"
          "This application is intended for informational purposes only and is not a substitute for professional medical advice. "
          "Please consult your doctor before making any health-related decisions.\n\n"
          "By using this app, you agree to our terms of service and privacy policy.",
    );
  }
}

class EditDialogWidget extends StatefulWidget {
  const EditDialogWidget({super.key});

  @override
  State<EditDialogWidget> createState() => _EditDialogWidgetState();
}

class _EditDialogWidgetState extends State<EditDialogWidget> {
  String selectedGender = 'Nam';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(238, 227, 227, 227),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'ID',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              subtitle: TextField(style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              title: Text(
                'Họ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              subtitle: TextField(style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              title: Text(
                'Tên',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              subtitle: TextField(style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              title: Text(
                'Ngày sinh',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              subtitle: TextField(style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              title: Text(
                'Giới tính',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
            ListTile(
              title: Text("Nam"),
              leading: Radio(
                value: 'Nam',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Nữ"),
              leading: Radio(
                value: 'Nữ',
                groupValue: selectedGender,
                onChanged: (value) {
                  setState(() {
                    selectedGender = value!;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 129, 120),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Hủy',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 153, 251, 155),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialogWidget();
                      },
                    );
                  },
                  child: Text(
                    'Lưu thay đổi',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Image.asset('assets/warning.png', height: 70, width: 70),
          SizedBox(height: 20),
          Text(
            'Alert',
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 252, 139, 131),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      content: Text(
        'Information after changing will not be able to do it, are you sure?',
        style: TextStyle(fontSize: 17),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 36),
              ),
              child: Text(
                'No',
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 36),
                backgroundColor: const Color.fromARGB(255, 86, 194, 90),
                foregroundColor: const Color.fromARGB(255, 86, 194, 90),
              ),
              child: Text(
                'Yes',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
