import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteClient extends StatefulWidget {
  const DeleteClient({ Key? key }) : super(key: key);

  @override
  State<DeleteClient> createState() => _DeleteClientState();
}

class _DeleteClientState extends State<DeleteClient> {

  Future<void> deleteData() async
  {
    var url="localhost:80/tpClient/deleteclient.php";
    final res=await http.post(Uri.parse(url),
    body:{
  
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Client"),
        backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [          
            new RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/delete');
              },
              child: Text("delete"),
              color: Color.fromARGB(255, 72, 74, 77),
              ),
          ],
        )
    );
  }
}