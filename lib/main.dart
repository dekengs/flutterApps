import 'package:crud/editClient.dart';
import 'package:crud/updateclient.dart';
import 'package:crud/delete.dart';
import 'package:flutter/material.dart';


void main() {
  //runApp(const MyApp());
   runApp(MaterialApp(
     title:'Crud client',
     debugShowCheckedModeBanner: false,
    theme: ThemeData(
          primarySwatch:Colors.red, 
          ),
     routes:{
       '/save':(context)=>EditClient(),
       '/update':(context)=>updateClient(),
       '/delete':(context) => DeleteClient()
     }

   ));
}