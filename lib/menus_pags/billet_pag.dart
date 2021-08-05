import 'package:banco_gac/menus_pags/type_barcode_pag.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BilletPag extends StatefulWidget {
  @override
  _BilletPagState createState() => _BilletPagState();
}

class _BilletPagState extends State<BilletPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pop();
            },),
          title: Text(
            "Pagamentos",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,),
                child: InkWell(
                  onTap: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BilletPag()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.camera_enhance,color: Colors.white,size: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Escanear código de barras", style: TextStyle(fontSize: 18,color: Colors.white ,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Divider(
                color: Theme.of(context).primaryColor,
                height: 5,
                thickness: 3,
                indent: 0,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TypeBarcodePag()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.barcode,color: Colors.white,size:40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Digite o código do boleto", style: TextStyle(fontSize: 18,color: Colors.white ,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
