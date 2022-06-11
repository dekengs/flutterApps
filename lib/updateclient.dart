import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class updateClient extends StatefulWidget {
  const updateClient({ Key? key }) : super(key: key);

  @override
  State<updateClient> createState() => _updateClientState();
}

class _updateClientState extends State<updateClient> {

  TextEditingController txtnom = new TextEditingController();
  TextEditingController txtpostnom = new TextEditingController();
  TextEditingController txtprenom = new TextEditingController();
  TextEditingController txtadresse = new TextEditingController();
  TextEditingController txttelephone = new TextEditingController();
  TextEditingController txtmail = new TextEditingController();
  TextEditingController txtid = new TextEditingController();

  //fonction asych

  Future<void> EditData() async {
    var url = "http://localhost:80/tpClient/editclient.php";
    final reponse = await http.post(Uri.parse(url), body: {
      "nom": txtnom.text,
      "postnom":txtpostnom.text,
      "prenom":txtprenom.text,
      "adresse": txtadresse.text,
      "telephone": txttelephone.text,
      "id": txtid.text

    });
    Catch(ex) {
      print(ex.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text("IDENTIFICATION"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
        new TextField(
            controller: txtid,
            decoration: InputDecoration(
                labelText: "Entrez votre id", hintText: "Entrez votre code"),
          ),
          new TextField(
            controller: txtnom,
            decoration: InputDecoration(
                labelText: "Entrez votre nom", hintText: "Entrez votre nom"),
          ),
          SizedBox(
            width: 20,
          ),
          new TextField(
            controller: txtadresse,
            decoration: InputDecoration(
                labelText: "Entrez votre adresse", hintText: "Entrez votre adresse"),
          ),

          SizedBox(
            width: 20,
          ),
          new TextField(
            controller:txttelephone,
            decoration: InputDecoration(
              labelText: "Entrez votre telephone", hintText: "entrez votre nom"),
          ),
          SizedBox(
            width: 20,
          ),
          new TextField(
            controller: txtmail,
            decoration: InputDecoration(
                labelText: "Entrez votre mail", hintText: "Entrez votre mail"),
          ),
          SizedBox(
            width: 20,
          ),
          new RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/update');
            },
            child: Text("Modifier"),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}