import 'package:flutter/material.dart';

class About extends StatefulWidget{
  String nama, email, password, username;

  About({this.nama, this.email, this.username, this.password});

  _About createState()=> _About();
}

const List<Key> key =[
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _About extends State<About>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children:<Widget>[
          Container(
            child: Image.asset('gambar/logo_honda.png'),
          ),
          Container(
            child: Text('nama : ${widget.nama}'),
          ),
          Container(
            child: Text('email: ${widget.email}'),
          ),
          Container(
            child: Text('username: ${widget.username}'),
          ),
          Container(
            child: Text('password: ${widget.password}'),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }

}