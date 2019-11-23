import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
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
          top: 1,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("lib/imagens/m1.png"),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Transforma",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "O transforma é um aplicativo que auxilia na hora de fazer uma doação, seja de roupa ou alimentos, ele conecta o doador a uma ong próxima ao doador ou auxilia no tipo de doação para cada instituição. O usuário pode ser uma pessoa comum ou uma empresa, o único pré-requisito é a ter vontade de ajudar o próximo.",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Integrantes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Marco Antônio Santos da Silva",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Maria Celina Medeiros",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Yuri Leorato",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "José Newton Almerão",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Bruno Martins",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
