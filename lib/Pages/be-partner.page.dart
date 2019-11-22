import 'package:flutter/material.dart';

void main() {
  runApp(new BePartnerPage());
}

class User {
  const User(this.name);

  final String name;
}

class MyApp extends StatefulWidget {
  State createState() => new _BePartnerPageState();
}

//Padrão:

class BePartnerPage extends StatefulWidget {
  @override
  _BePartnerPageState createState() => _BePartnerPageState();
}

class _BePartnerPageState extends State<BePartnerPage> {
  User selectedEscolha;
  List<User> escolha = <User>[const User('ONG'), const User('Pessoa Jurídica')];

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
          image: DecorationImage(
            image: AssetImage("lib/imagens/7.png"),
            fit: BoxFit.cover,
          ),
          /*gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.02, 0.9],
            colors: [
              Color(0xFF469F64),
              Color(0xFFC6E7CA),
            ],
          ),*/
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: 60,
            left: 60,
            right: 60,
          ),
          children: <Widget>[
            SizedBox(
              child: Container(
                alignment: Alignment.centerRight,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: new DropdownButton<User>(
                  hint: new Text(
                    "ONG/Pessoa Jurídica",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  value: selectedEscolha,
                  onChanged: (User newValue) {
                    setState(() {
                      selectedEscolha = newValue;
                    });
                  },
                  items: escolha.map((User user) {
                    return new DropdownMenuItem<User>(
                      value: user,
                      child: new Text(
                        user.name,
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  }).toList(),
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
