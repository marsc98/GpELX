import 'package:flutter/material.dart';

void main() {
  runApp(new SejaDoadorPage());
}

class User {
  const User(this.name);

  final String name;
}

class MyApp extends StatefulWidget {
  State createState() => new _SejaDoadorPageState();
}

//Padrão:

class SejaDoadorPage extends StatefulWidget {
  @override
  _SejaDoadorPageState createState() => _SejaDoadorPageState();
}

class _SejaDoadorPageState extends State<SejaDoadorPage> {
  User selectedUserComida;
  User selectedUserPessoa;
  List<User> users = <User>[const User('Fisica'), const User('Juridica')];
  List<User> opcao = <User>[const User('Alimento'), const User('Roupa')];

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
                  color: Colors.yellow.withOpacity(0.6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: new DropdownButton<User>(
                  hint: new Text(
                    "Escolha o que irá doar: ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  value: selectedUserComida,
                  onChanged: (User newValue) {
                    setState(() {
                      selectedUserComida = newValue;
                    });
                  },
                  items: opcao.map((User user) {
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
                    "Pessoa física/jurídica",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  value: selectedUserPessoa,
                  onChanged: (User newValue) {
                    setState(() {
                      selectedUserPessoa = newValue;
                    });
                  },
                  items: users.map((User user) {
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
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Descreva sua doação:",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 55,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.8),
                borderRadius: BorderRadius.all(
                  Radius.circular(9),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "DOAR!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
