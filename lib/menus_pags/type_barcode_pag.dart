import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TypeBarcodePag extends StatefulWidget {
  @override
  _TypeBarcodePagState createState() => _TypeBarcodePagState();
}

class _TypeBarcodePagState extends State<TypeBarcodePag> {
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
            "Depositar ",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Text("Digite o código do boleto...", style:
                TextStyle(fontSize: 25,color: Colors.white),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 25,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(FontAwesomeIcons.barcode,color: Colors.white, size: 40,),
                   ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: "Ex * 5901234123457",
                            hintStyle: TextStyle( color: Colors.grey, fontSize: 18),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.white)
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              //color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 25,),
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 3,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConfirmDeposit()));
                  },
                    color: Colors.black,
                    child: Text("Confirmar", style: TextStyle(color: Colors.white,fontWeight:
                    FontWeight.bold,
                        fontSize: 20),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
