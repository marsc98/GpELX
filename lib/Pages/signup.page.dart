import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  String _nome, _emailcad, _senhacad;

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
          top: 30,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              /*width: 120,
              height: 120,
              alignment: Alignment(0.0, 1.4),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("lib/imagens/addfoto.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),*/
              child: Container(
                height: 100,
                //width: 28,
                margin: const EdgeInsets.only(left: 88.0, right: 88.0),
                /*padding: EdgeInsets.only(
                  top: 18,
                  left: 18,
                  right: 18,
                  bottom: 18,
                ),*/
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.black87,
                      size: 30,
                    ),
                    onPressed: () => {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onSaved: (input) => _nome = input,
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onSaved: (input) => _emailcad = input,
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onSaved: (input) => _senhacad = input,
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF1F9A58).withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.red[400].withOpacity(0.7),
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "Cancelar", //Exemplo de validação do botão tá na pagina de login.
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => Navigator.pop(context, false),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
