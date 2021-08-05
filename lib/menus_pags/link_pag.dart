import 'package:flutter/material.dart';

import 'confirm_link_pag.dart';

class LinkPag extends StatefulWidget {
  @override
  _LinkPagState createState() => _LinkPagState();
}

class _LinkPagState extends State<LinkPag> {

  final _depositPriceController =  TextEditingController();

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
                child: Text("Quanto você vai cobrar ?", style:
                TextStyle(fontSize: 25,color: Colors.white),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 25,),
                    Text("R\$", style: TextStyle(color: Colors.white ,fontSize: 35),),
                    Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "0,00",
                            hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                            fillColor: Colors.white,
                            labelStyle: TextStyle(color: Colors.white)
                        ),
                        keyboardType: TextInputType.number,
                        controller: _depositPriceController,
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConfirmLink()));
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
