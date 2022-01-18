import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Dashboard'),
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 360,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.perm_identity, size: 70),
                          title: Text('Alexandra',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                              )),
                          subtitle: Text('Procurement Staff',
                              style: TextStyle(color: Colors.black87)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Image.asset(
                  'assets/Help.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 15),
                Expanded(
                    child: Text("Help",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 23.0,
                        ))),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Image.asset(
                  'assets/About.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 15),
                Expanded(
                    child: Text("About App",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 23.0,
                        ))),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Image.asset(
                  'assets/Feedback.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Text("Feedback",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 23.0,
                        ))),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 20),
                Image.asset(
                  'assets/Loqout.png',
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 15),
                Expanded(
                    child: Text("Loqout",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 23.0,
                        ))),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      );
    });
  }
}
