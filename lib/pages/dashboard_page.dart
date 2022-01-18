import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sizer/sizer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

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
                  height: 12,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text("Selamat Pagi, Alexandra!",
                    style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 25.0,
                        color: Colors.black))
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
                SizedBox(
                  width: 30,
                ),
                Text("Analisis Stok",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black))
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 165,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.blueAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading:
                              Icon(Icons.arrow_circle_down_outlined, size: 30),
                          title: Text('3000',
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text('Product In',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 165,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.orangeAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading:
                              Icon(Icons.arrow_circle_up_rounded, size: 30),
                          title: Text('2600',
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text('Product Out',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 15),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.lightBlue,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.archive_outlined, size: 30),
                          title: Text('400',
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text('Total Product',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 30),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/nav', (route) => false);
                  },
                  child: Text('Add Product'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(335, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
