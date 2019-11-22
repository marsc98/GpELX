import 'package:flutter/material.dart';

class OngsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F9A58).withOpacity(0.8),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF3F9DD),
        ),
        child: ListView(
          children: <Widget>[
            // ListTile(
            //   leading: Icon(
            //     Icons.accessibility_new,
            //     color: Colors.black,
            //     size: 40,
            //   ),
            //   title: Text(
            //     "Escola Estadual de Ensino Fundamental",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            SizedBox(
              child: Container(
                height: 30,
                decoration: BoxDecoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
