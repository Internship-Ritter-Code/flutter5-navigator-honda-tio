import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Detail extends StatefulWidget{
  String dnama, dgambar, dketerangan;
  Detail({this.dnama, this.dgambar, this.dketerangan});
  _Detail createState() => _Detail();
}

class _Detail extends State<Detail>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Motor"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 240,
            child: new Hero(
                tag: widget.dgambar,
                child: new InkWell(
                  child: Image.asset('gambar/${widget.dgambar}', fit: BoxFit.cover,),
                )),
          ),
          new BagianNama(nama: widget.dnama),
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class BagianNama extends StatelessWidget{
  String nama;
  BagianNama({this.nama});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Container(
        child: Card(
          child:Text(
            '$nama', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0), textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}