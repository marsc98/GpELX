import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:transforma/Pages/be-partner.page.dart';
import 'package:transforma/Pages/family.page.dart';
import 'package:transforma/Pages/ongs.page.dart';
import 'package:transforma/Pages/seja-doador.page.dart';

import 'be-partner.page.dart';

class InsideLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          /*gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xFF469F64),
              Color(0xFFC6E7CA),
            ],
          ),*/
          image: DecorationImage(
            image: AssetImage("lib/imagens/7.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          children: <Widget>[
            //Seja Doador:

            SizedBox(
              child: Container(
                height: 65,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 1.0,
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Color(0xFF469F64).withOpacity(0.8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Seja um doador!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            child: SizedBox(
                              child: Image.asset("lib/imagens/s11.png"),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SejaDoadorPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            SizedBox(
              child: Container(
                height: 65,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 1.0,
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                            child: SizedBox(
                              child: Image.asset("lib/imagens/s22.png"),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ),
                        Text(
                          "Seja Nosso Parceiro",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BePartnerPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //ONGS:
            SizedBox(
              child: Container(
                height: 65,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 1.0,
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Color(0xFF469F64).withOpacity(0.8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "ONG`s Parceiras",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            child: SizedBox(
                              child: Image.asset("lib/imagens/s55.png"),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OngsPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Container(
                height: 65,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1.0,
                      blurRadius: 1.0,
                      color: Colors.black12,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: SizedBox(
                            child: SizedBox(
                              child: Image.asset("lib/imagens/s44.png"),
                              height: 42,
                              width: 42,
                            ),
                          ),
                        ),
                        Text(
                          "Adicione uma Fámilia",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewFamilyPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
