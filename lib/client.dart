import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Client extends StatefulWidget {
  const Client({ Key? key }) : super(key: key);

  @override
  State<Client> createState() => _ClientState();
}

class _ClientState extends State<Client> {
  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtpostnom = new TextEditingController();
  TextEditingController txtprenom = new TextEditingController();
  TextEditingController txtsexe = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txtphone = new TextEditingController();
  TextEditingController txtmail = new TextEditingController();

  Future<void> addData() async
  {
    var url="http://172.20.10.2:80/tpClient/saveclient.php";
    final res=await http.post(Uri.parse(url),
    body:{
      "nom":txtnom.text,
      "postnom":txtpostnom.text,
      "prenom":txtprenom.text,
      "adresse":txtadresse.text,
      "telephone":txtphone.text,
      "mail":txtmail.text
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Save Client"),
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            new TextField(
                controller: txtnom,
                decoration : InputDecoration(
                  labelText: "Nom",
                  hintText: "Entrer le nom"
                )
              ),

            new TextField(
                controller: txtpostnom,
                decoration : InputDecoration(
                  labelText: "Postnom",
                  hintText: "Entrer le postnom"
                )
              ),

              new TextField(
                controller: txtprenom,
                decoration : InputDecoration(
                  labelText: "Prenom",
                  hintText: "Entrer le prenom"
                )
              ),
              
                new TextField(
                controller: txtadresse,
                decoration : InputDecoration(
                  labelText: "Adresse",
                  hintText: "Entrer l'adresse"
                )
              ),
              new TextField(
                controller: txtphone,
                decoration : InputDecoration(
                  labelText: "Telephone",
                  hintText: "Entrer le num"
                )
              ),
                new TextField(
                controller: txtmail,
                decoration : InputDecoration(
                  labelText: "Email",
                  hintText: "Entrer l'adresse mail"
                )
              ),
               new RaisedButton(
              onPressed: (){addData();},
              child: Text("Enregistrer"),
              color: Colors.blue,
              ),
          ],
        )
    );
  }
}