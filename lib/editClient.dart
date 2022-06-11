import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditClient extends StatefulWidget {
  const EditClient({ Key? key }) : super(key: key);

  @override
  State<EditClient> createState() => _EditClientState();
}

class _EditClientState extends State<EditClient> {
  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtpostnom = new TextEditingController();
  TextEditingController txtprenom = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txtphone = new TextEditingController();
  TextEditingController txtmail = new TextEditingController();
  TextEditingController txtid = new TextEditingController();

  Future<void> editData() async
  {
    var url="http://localhost:80/tpClient/saveclient.php";
    final res=await http.put(Uri.parse(url),
    body:{
      "id":txtid.text,
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
        title: Text("Update Client"),
        backgroundColor: Color.fromARGB(255, 228, 61, 116),
        ),
        body: ListView(
          children: [
            new TextField(
                controller: txtid,
                decoration : InputDecoration(
                  labelText: "Code",
                  hintText: "Entrer le code"
                )
              ),
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
                  labelText: "Sexe",
                  hintText: "Entrer le sexe"
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
              onPressed: (){
                Navigator.pushNamed(context, '/save');
              },
              child: Text("Enregistrer"),
              color: Color.fromARGB(255, 71, 153, 207),
              ),
          ],
        )
    );
  }
}