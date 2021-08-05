import 'package:flutter/material.dart';

import 'comfirm_boleto_pag.dart';


class BoletoPayPag extends StatefulWidget {
  @override
  _BoletoPayPagState createState() => _BoletoPayPagState();
}

class _BoletoPayPagState extends State<BoletoPayPag> {
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
                padding: const EdgeInsets.only(left: 25, right: 35, top: 35),
                child: Text("Digite o código do boleto", style:
                TextStyle(fontSize: 25,color: Colors.white),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 25,),
                    Container(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "000000000000",
                            hintStyle: TextStyle( color: Colors.white, fontSize: 20),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.white)
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
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
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 3,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ComfirmBoletoPag()));
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
