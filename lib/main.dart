import 'package:flutter/material.dart';
import 'package:flutter5_navigator_honda/ui_view/page_home_nav.dart';
import 'package:flutter5_navigator_honda/ui_view/ui_navbar/about.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), debugShowCheckedModeBanner: false,

      routes: <String, WidgetBuilder>{
        '/home' : (BuildContext context) => new PageHomeNav(),
        '/about' : (BuildContext context) => new About()
      },
    );
  }
}

class LoginPage extends StatefulWidget{
  _LoginPage createState()=> _LoginPage();
  const LoginPage ({Key key}) :super(key: key);
}

const List<Key> key=[
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _LoginPage extends State<LoginPage>{
  String dEmail;
  String dPassword;
  String dUsername;
  String dName;

  @override
  Widget build(BuildContext context) {
    // TODO 1 Deklarasi Data : String diatas
    TextEditingController iEmail = TextEditingController();
    TextEditingController iPassword = TextEditingController();
    TextEditingController iUsername = TextEditingController();
    TextEditingController iName = TextEditingController();

    return Scaffold(
      body: ListView(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20.0),
            child: Image.asset(
              'gambar/logo_honda.png',
              fit: BoxFit.cover,),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20.0),
            child: Text('SIGN UP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0,),
            child: TextFormField(
              controller: iUsername,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
                hintText: 'Masukan Username'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
            child: TextFormField(
              controller: iEmail,
              decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Email',
                  hintText: 'Masukan Email'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
            child: TextFormField(
              obscureText: true,
              controller: iPassword,
              decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  hintText: 'Masukan Password'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
            child: TextFormField(
              controller: iName,
              decoration: const InputDecoration(
                  filled: true,
                  labelText: 'Name',
                  hintText: 'Masukan Nama'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: MaterialButton(
              onPressed: (){
                setState(() {
                  dUsername = iUsername.text;
                  dEmail = iEmail.text;
                  dPassword = iPassword.text;
                  dName = iName.text;
                });
                showDialog(
                    context: context, builder: (_) => AssetGiffyDialog(
                    image: Image.asset('gambar/logo_honda.png'),
                    title: Text('Infromation', style: TextStyle(fontWeight: FontWeight.bold),),
                    description: Text("Email : " + iEmail.text + "\nPassword : " + iPassword.text +
                      "\nUserName : " + iUsername.text + "\nName : " + iName.text),
                    onOkButtonPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PageHomeNav(
                          nama : dName, email : dEmail, username: dUsername, password: dPassword
                      )));
                  },
                ));
                // showDialog(context: context, builder: (_) => );
              },
              color: Colors.blueAccent,
              child: Text('SignUp',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }

}