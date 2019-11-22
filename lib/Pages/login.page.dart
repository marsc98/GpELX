import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transforma/Pages/inside-login.page.dart';
import 'package:transforma/Pages/reset-password.page.dart';
import 'package:transforma/Pages/signup.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final validacao = GlobalKey<FormState>();

  String _email, _senha;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //  title: Text('Transforma'),
      //),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        //color: Colors.green[200],
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xFF469F64),
              Color(0xFFC6E7CA),
            ],
          ),
        ),
        child: ListView(
          key: validacao,
          children: <Widget>[
            SizedBox(
              width: 130,
              height: 130,
              child: Image.asset("lib/imagens/m1.png"),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(fontSize: 20),
              validator: (input) =>
                  !input.contains('@') ? 'E-mail inválido' : null,
              onSaved: (input) => _email = input,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              autofocus: true,
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
              style: TextStyle(fontSize: 20),
              validator: (input) => input.length < 8
                  ? 'Senha inválida, você precisa de uma senha maior'
                  : null,
              onSaved: (input) => _senha = input,
            ),
            //Criar conta:
            Container(
              height: 50,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  'Criar Conta',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),
            //Recuperar senha:
            Container(
              height: 19,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  'Esqueceu sua Senha',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
            //Login:
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            child: Image.asset("lib/imagens/partelogo.jpeg"),
                            height: 28,
                            width: 28,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InsideLoginPage(),
                        ),
                      );
                    } //_submit -- Para verificar se o login é válido usar a submit,
                    ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Facebook:
          ],
        ),
      ),
    );
  }

//Validção do login:

/*  void _submit() {
    if (validacao.currentState.validate()) {
      validacao.currentState.save();
      print(_email);
      print(_senha);
    }
  }*/
}
