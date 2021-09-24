import 'package:flutter/material.dart';
import 'package:flutter5_navigator_honda/ui_view/ui_navbar/about.dart';
import 'package:flutter5_navigator_honda/ui_view/ui_navbar/detail.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class PageHomeNav extends StatefulWidget{
  String nama, email, password, username;
  PageHomeNav({this.nama, this.email, this.username, this.password});

  _PageHomeNav createState()=> _PageHomeNav();
}

const List<Key> keys=[
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _PageHomeNav extends State<PageHomeNav>{

  List<Container> daftarMotor = new List();
  var itemDaftarMotor = [
    {
      "nama" :  "Honda XR150L",
      "gambar":  "1_Honda_XR150L.jpg",
      "keterangan":
          "Motor trail Honda yang satu ini merupakan seri termurah dari semua deretan motor trail yang akan kalian simak dibawah ini, pasalnya harga motor trail Honda XR150L ini hanya dibanderol 89.000 php atau jika dikursialkan kedalam rupiah setara dengan 24 jutaan, sangat terjangkau bukan ?  Disamping itu perlu kalian ketahui motor trail Honda yang satu ini tidak bisa kalian temukan di pasaran motor Indonesia, pasalnya motor ini hanya diperjual belikan di negara Filiphina."
    },
    {
      "nama": "Honda CRF150F",
      "gambar": "2_Honda_CRF150F.jpg",
      "keterangan":
      "Pertama Honda memiliki motor trail bernama Honda CRF150F yang mana pada motor ini telah ditenagai dengan mesin berkapasitas 149 cc dan untuk mengoptimalkan suhu mesin Honda menggunakan sistem pendingin bentuk air. Kemudian untuk harga motor trail Honda CRF150F ini dibanderol kisaran 50 jutaan, mrenurut kami tarif tersebut relatif murah untuk motor sekelas Honda CRF150F."
    },
    {
      "nama": "Honda CRF230F",
      "gambar": "3_Honda_CRF230F.jpg",
      "keterangan":
      "Deretan motor trail Honda selanjutnya adalah Honda CRF230F dimana pada bagian dapur pacunya telah Honda pasangkan mesin berkapasitas 223 cc yang mampu menghasilkan daya maksimal mencapai 18.63 HP (13.7 kW) pada putaran 8.000 rpm dan untuk torsi maksimal yang dihasilkan berada pada angka 18.8 Nm (1.92 kg-m) pada putaran 6.000 rpm dengan demikian kita tentunya bisa sedikit menggambarkan sensasi yang akan kita rasakan ketika mengendarai motor trail Honda yang satu ini, disamping itu harga motor trail Honda CRF230F juga dibanderol sangat terjangkau, yakni 56 jutaan."
    },
    {
      "nama": "Honda AG-XR",
      "gambar": "4_Honda_AG_XR.jpg",
      "keterangan":
      "Honda AG-XR juga merupakan salah satu dari sekian banyak motor trail garapan Honda. Motor trail Honda AG-XR merupakan motor yang dipasarkan di pasaran Australia dan untuk harga motor trail Honda AG-XR dibanderol 4.499 dolar  atau setara dengan 68 jutaan. Kemudian untuk urusan performa yang dimiliki motor trail ini kami rasa tidak perlu diragukan lagi, pasalnya Honda telah memasangkan mesin-mesin berkualitas dan tak lupa Honda juga melengkapinya dengan banyak fitur pendukung berteknologi canggih di beberapa sektornya."
    },
    {
      "nama": "Honda CRF250L Rally",
      "gambar": "5_Honda_CRF250_Rally.jpg",
      "keterangan":
      "Selanjutnya Honda CRF250 Rally juga bisa menjadi pilihan tepat bagi kalian yang ingin membeli motor trail. Motor ini dibekali mesin berkpasitas 249 cc dengan sitem pendingin air yang siap mengotimalkan suhu mesin tetap stabil. Nah bagi kalian yang tetarik untuk memiliki motor ini, kalian diwajibkan menyiapkan mahar sebesar 65 jutaan."
    },
    {
      "nama": "Honda CRF250L",
      "gambar": "6_Honda_CRF250L.jpg",
      "keterangan":
      "Secara tampilan Honda CRF250L sepintas mirip dengan sodaranya, yakni Honda CRF150L hanya saja untuk motor trail Honda yang satu ini memiliki kapasitas mesin yang lebih besar, yakni 249 cc dan telah mengusung teknologi DOHC sehingga kualitas performa yang dimiliki juga tentunya lebih besar. Disamping itu untuk harga motor trail Honda CRF250L juga dibanderol sedikit lebih mahal, yakni 73 jutaan."
    },
    {
      "nama": "Honda XR650L",
      "gambar": "7_Honda_XR650L.jpg",
      "keterangan":
      "Motor trail Honda selanjutnya adalah Honda XR650L, sesuai dengan namanya motor ini telah dibekali mesin berkapasitas 644 cc lengkap dengan teknologi mesin SOHC dan telah menggunakan sistem pendingin liquid, sehingga untuk urusan performanya kita tidak perlu meragukannya lagi. Sedangkan untuk harga motor trail Honda XR650L ini berada di angka USD 6899 atau setara dengan 93 jutaan."
    },
    {
      "nama": "Honda CRF250R",
      "gambar": "8_Honda_CRF250R.jpg",
      "keterangan":
      "Selain CRF250L Honda juga memiliki motor trail yang bernama Honda CRF25oR yang tidak lain dan tidak bukan merupakan sodara dari CRF250L, Untuk perbedaam kedua motor tersebut mungkin terletak pada segi tampilan, dimana untuk Honda CRF250R mengusung tampilan yang lebih simple dan juga minimalis, namun untuk urusan performa Honda menggunakan mesin dengan kapasitas yang sama, yakni 249 cc sehingga kualitas performa yang dihasilkan juga pastinya tidak beda jauh dengan Honda CRF250L. Sedangkan untuk harga motor trail Honda CRF250R dibanderol 101 jutaan."
    },
    {
      "nama": "Honda NC700X",
      "gambar": "9_Honda_NC700X.jpg",
      "keterangan":
      "Berbekal mesin 670 cc motor trail Honda NC700X bisa dipastikan mampu menghasilkan performa yang powerfull, disamping itu Honda juga menanamkan suspensi belakang pro-link system yang akan memberi kenyamanan lebih ketika melintasi medan yang terjal. Kemudian untuk harga motor trail Honda NC700X ini kisaran 103 juta rupiah."
    },
    {
      "nama": "Honda Montesa Cota4RT260",
      "gambar": "10_Honda_Montesa_Cota4RT260.jpg",
      "keterangan":
      "Honda Montesa Cota4RT260 juga merupakan salah satu motor trail garapan Honda yang didalamnya telah terpasang mesin single silinder berkapasitas 260 cc. Honda juga memasangkan suspensi Teleskopik pada bagian dan pada bagian belakang menggunakan suspensi Pro Link System yang pastinya mampu memeberikan kenyamanan ekstra pada pengendara ketika melinstasi berbagai medan. Bagi kalian yang berminat memiliki motor trail yang satu ini kalian diharuskanm menebusnya dengan harga 107 juta rupiah."
    },
    {
      "nama": "Honda CRF450R",
      "gambar": "11_Honda_CRF450R.jpg",
      "keterangan":
      "Hadir dengan desain yang minimalis dan pada sektor pacu telah tertanam mesin berkapasitas 449 cc motor trail Honda CRF450R siap mencuri perhatian para penggemar otomotif, khususnya mereka yang memiliki jiwa petualang tinggi, pasalnya kualitas performa yang dimiliki motor trail ini cukup mengagumkan, disamping itu Honda juga telah memasangkan ban Dunlop MX3sS berukuran 90/100-21 pada bagian depan dan pada bagian belakang menggunakan Dunlop MX3S berukuran 120/80-19. Kemudian untuk harga motor trail Honda CRF450R ini dibanderol kisaran 123 jutaan."
    },
    {
      "nama": "Honda CRF250LA ABS",
      "gambar": "12_Honda_CRF250LA_ABS.jpg",
      "keterangan":
      "Dengan harga 103 jutaan kalian bisa memiliki motor trail Honda CRF250LA ABS, motor ini digadang-gadang memiliki kualitas performa yang mengagumkan, pasalnya pada sektor pacu Honda CRF250LA ABS telah terpasang mesin berkapasitas 249 cc yang memiliki 4 buah stroke dengan teknologi DOHC. Selain itu pada bagian kaki-kaki Honda juga memasangkan sepasang suspensi terbaik dan sistem pengereman yang optimal."
    },
    {
      "nama": "Honda VFR800L",
      "gambar": "13_Honda_VFR800L.jpg",
      "keterangan":
      "Honda VFR800L hadir dengan konsep tampilan yang gahar, motor ini juga masuk dalam kelompok motor adventure sehingga bagi kalian yang hobi touring atau berkendara jarak jauh bisa menjadikan motor trail Honda yang satu ini sebagai partner dalam mengarungi aspal di berbagai daerah. Soal performa Honda VFR800L tidak dapat diragukan lagi, pasalnya pada dapur pacunya telah terpasang meisn 16-valve DOHC berkapasitas 782 cc dan telah suport sistem pendingin mesin dalam bentuk liquid sehingga suhu mesin akan tetap stabil meskipun telah melakukan perjalanan jauh. Untuk harga motor trail Honda VFR800L kabarnya dibanderol kisaran 200 jutaan."
    },
    {
      "nama": "Honda VFR1200X",
      "gambar": "14_Honda_VFR1200X.jpg",
      "keterangan":
      "Motor yang masuk dalam kelompok street bike ini memiliki spesifikasi yang dibilang sangat baik, pasalnya untuk urusan performa Honda telah mempercayakan pada mesin bekapasitas 1237 cc dan telah mendukung teknologi Unicam 16-valve 76° V4 yang pastinya akan menghasilkan kualitas performa super ampuh. Bukan hanya itu, untuk sistem pengremannya Honda VFR1200X sudah mendukung teknologi ABS yang pastinya mampu memberikan pengereman yang optimal. Kemudian untuk harga motor trail Honda VFR1200X dibanderol 215 jutaan."
    },
    {
      "nama": "Honda Africa Twin CRF1000L",
      "gambar": "15_Honda_Africa_Twin_CRF1000L.jpg",
      "keterangan":
      "Selanjutnya bagi kalian yang memiliki hobi berkendara di medan off-road Honda Africa Twin CRF1000L ini bisa menjadi referensi yang tepat, dengan budget 460 – 500 juta rupiah kalian bisa memiliki satu unit motor trail Honda yang satu ini sebagai partner dalam mengarungi medan-medan ekstrim. Kemudian untuk spesifikasi motor ini kami rasa cukup sebanding dengan harga motor trail Honda Africa Twin CRF1000L cukup menguras kantong dan dompet kita seketika. Dari deretan motor trail Honda yang kalian simak diatas apakah ada salah satu diantara yang ingin kalian miliki ? jika demikian kalian ada beberapa hal yang harus diperhatikan, diantaranya tidak semua motor trail Honda diatas tersedia di pasaran motor Indonesia, melainkan ada yang hanya dijual di negara-negara tetangga seperti halnya untuk motor trail Honda XR150 yang hanya diperjual belikan di negara Filiphina, selain itu harga motor trail Honda juga bisa berubah-ubah setiap waktu tanpa adanya pemberitahuan terlebih dahulu, dan  perlu kalian ketahui setiap Daerah terkadang memiliki harga motor trail Honda masing-masing, sehingga menutup kemungkinan jika kalian akan menemukan selisih harga di Daerah kalian dengan Daerah lainnya.Dengan spesifikasi yang ditanamkan pada setiap sektor di motor trail Honda diatas kami rasa mereka mampu bersaing di pasaran motor internasional dan menggeser pesaing ketatnya yakni jajaran motor trail Kawasaki yang telah lebih dahulu menciptakan motor trail dan juga telah memperoleh ruang di hati para penggila motor trail Indonesia. Sebagai contoh Honda CRF150L ini digadang-gadang akan menjadi pesaing kuat daripada Kawasaki KLX150. Baiklah cukup sekian informasi yang bisa kami sajikan mengenai harga motor trail Honda yang semoga bermanfaat bagi kalian semua. Terimakasih."
    }
  ];

  _DaftarMotor() async{
    for (var i = 0; i < itemDaftarMotor.length; i++){
      final dataMotor = itemDaftarMotor[i];
      final String gambarMotor = dataMotor["gambar"];

      daftarMotor.add(new Container(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: new InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => AssetGiffyDialog(
                  image: Image.asset(
                    'gambar/$gambarMotor',
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    dataMotor['nama'],
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                  description: Text(
                    dataMotor['keterangan'],
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onOkButtonPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detail(
                              dnama: dataMotor['nama'],
                              dgambar: dataMotor['gambar'],
                              dketerangan: dataMotor['keterangan'],
                            )));
                  },
                ),
              );
            },
            child: new Column(
              children: <Widget>[
                new Hero(
                  tag: dataMotor["nama"],
                  child: Image.asset(
                    'gambar/$gambarMotor',
                    fit: BoxFit.contain,
                    width: 100.0,
                    height: 85.0,
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Text(dataMotor['nama'])
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    _DaftarMotor();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: new Drawer(
        child: ListView(
          children:<Widget>[
            ListTile(
              title: Image.asset('gambar/logo_honda.png'),
            ),
            Divider(),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.person),
              onTap: (){
                showDialog(context: context, builder: (_) => AssetGiffyDialog(
                  image: Image.asset('gambar/logo_honda.png'),
                  title: Text('AboutMe!!1'),
                  description: Text('${widget.nama}, ${widget.username}'),
                  onOkButtonPressed: (
                      ){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> About(
                        nama : widget.nama, email : widget.nama, username: widget.username, password: widget.password
                    )));
                  },
                ));
              },
            ),
          ],
        ),
      ),
      body:new GridView.count(
        crossAxisCount: 2,
        children: daftarMotor,
      ),
    );
    throw UnimplementedError();
  }

}