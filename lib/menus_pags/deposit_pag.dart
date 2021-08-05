import 'package:banco_gac/menus_pags/confirm_deposit_pag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class DepositPag extends StatefulWidget {
  @override
  _DepositPagState createState() => _DepositPagState();
}

class _DepositPagState extends State<DepositPag> {

  var  _depositPriceController = MoneyMaskedTextController(precision: 2);

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
                child: Text("Quanto você quer \ndepositar ?", style:
                TextStyle(fontSize: 25,color: Colors.white),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 25,),
                    Text("R\$ ", style: TextStyle(color: Colors.white ,fontSize: 35),),
                    Container(
                      width: 200,
                      child: TextFormField(
                        style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          hintText: "0,0",
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
              height: 135,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Escolha um Valor entre R\$ 20,00 e R\$15.000,00",style:
                    TextStyle(fontSize: 20,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 3,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConfirmDeposit()));
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
