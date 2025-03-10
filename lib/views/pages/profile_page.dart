import 'package:flutter/material.dart';
import 'package:ltdd_tieuluan/views/widgets/dialog_widget.dart';

Map<String, dynamic> data = <String, dynamic>{
  'firstname': 'Nguyễn',
  'lastname': 'Hoàng Thịnh',
  'id': '2001224963',
  'gender': 'Nam',
  'birthday': '2004-06-29',
  'bloodtype': 'A',
};

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'ID',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            subtitle: Text(data['id'], style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            title: Text(
              'Họ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            subtitle: Text(data['firstname'], style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            title: Text(
              'Tên',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            subtitle: Text(data['lastname'], style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            title: Text(
              'Ngày sinh',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            subtitle: Text(data['birthday'], style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            title: Text(
              'Giới tính',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            subtitle: Text(data['gender'], style: TextStyle(fontSize: 20)),
          ),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext editDialogContext) {
                  return EditDialogWidget();
                },
              );
            },
            child: Text(
              'Sửa thông tin',
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
