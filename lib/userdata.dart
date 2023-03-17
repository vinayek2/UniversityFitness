import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetUserName extends StatelessWidget {
  final String documentID;

  GetUserName({required this.documentID});

  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return  
    FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentID).get(),
      builder:(context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Container(
            child: Text(
            '${data["name"]}',

            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,

            ),

            )
          );
        }
        return Text('Loading...');
      },
      );
  }
}

class Getnetid extends StatelessWidget {
  final String documentID;

  Getnetid({required this.documentID});

  @override
  Widget build(BuildContext context) {

    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return  
    FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentID).get(),
      builder:(context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
          return Container(
            child: Text(
            'Net ID: ${data["email"].substring(0, data["email"].indexOf("@"))}',

            style: TextStyle(
              color: Colors.white,
              fontSize: 35,

            ),

            )
          );
        }
        return Text('Loading...');
      },
      );
  }
}