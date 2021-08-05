import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'finishTransfe_pagr.dart';

class ComfirmAccountPag extends StatefulWidget {
  String dataType;


  ComfirmAccountPag(this.dataType);

  @override
  _ComfirmAccountPagState createState() => _ComfirmAccountPagState(dataType);


}

class _ComfirmAccountPagState extends State<ComfirmAccountPag> {
  final _formKey = GlobalKey<FormState>();

  String dataType;
  List _bank = ["777", "555", "222"];
  String _banksVal;

  _ComfirmAccountPagState(this.dataType,);

  var  _depositPriceController = MoneyMaskedTextController(precision: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Transferência",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  dataType == "tela1"
                      ? _cards(
                          "Digite o nome completo da  pessoa para quem você  deseja transferir..",
                          "Nome Completo")
                      : dataType == "tela2"
                          ? _cards("Informe o CPF ou CNPJ para quem você deseja transferir...","000.000.000.00") :
                    dataType == "tela3" ? _banks("Selecione o Banco...",):
                        dataType == "tela4" ? _cards("Qual a agência ?", "Digite sua agência"):
                            dataType =="tela5" ? _cards("Qual o número da conta com dígito ?", "Digite numero da conta") :
                            _cardsmoney("Quanto você quer Transferir para Emanuel Simplorio Galileia ?", "aki")
                ],
              ),
              // Butom //
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 90,
                  //color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                      ),
                      Divider(
                        color: Theme.of(context).primaryColorLight,
                        height: 5,
                        thickness: 3,
                        indent: 0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          dataType == "tela1"
                              ? setState(() {
                                  dataType = "tela2";
                                })
                              : dataType == "tela2"
                                  ? setState(() {
                                      dataType = "tela3";
                                    })
                                  : dataType == "tela3"
                                      ? setState(() {
                                          dataType = "tela4";
                                        })
                                      : dataType == "tela4"
                                          ? setState(() {
                                              dataType = "tela5";
                                            })
                                          : dataType == "tela5" ?  setState(() {
                                              dataType = "tela6";
                                            }):
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> finishTransfer()));
                        },
                        color: Colors.black,
                        child: Text(
                          "Prosseguir",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  _cards(String titleText, String hintText) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 250,
            //color: Colors.blue,
            child: Center(
              child: Text(
                titleText,
                style: TextStyle(color: Colors.white, fontSize: 18),
                //textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            validator: (text) {
              if (text.isEmpty) {
                return "adcione a informação corretamente";
              } else {
                return null;
              }
            },
            style: TextStyle(
              color: Colors.white,
            ),
            // onSaved: (value)=> dataInfoUser = value,
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white, fontSize: 18),
                fillColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white),
                hintText: hintText,
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor))),
          ),
        ),
      ],
    );
  }

  _banks(String titleText) {
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          child: Center(
            child: Text(
              titleText,
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      Divider(
        color: Theme.of(context).primaryColor,
        height: 3,
        thickness: 2,
        indent: 0,
      ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                value: _banksVal,
                hint: Text("Selecione banco",style: TextStyle(color: Colors.white),),
                  onChanged: (value){
                  setState(() {
                  _banksVal = value ;
                  });
              },
                items: _bank.map((value){
                  return DropdownMenuItem(
                  value: value,
                  child: Text(value),
              );
      }).toList(),
      ),
              Spacer(),
              Text("Banco GAC",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
        ),
      Divider(
        color: Theme.of(context).primaryColor,
        height: 3,
        thickness: 2,
        indent: 0,
      ),
      Container(
          height: 100,
          //color: Colors.blue,
          child:
          Center(child: Text("Outros Bancos disponíveis em breve",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 20),))
      ),
    ]
  );


  }

  _cardsmoney(String titleText, String hintText) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 300,
            child: Center(
              child: Text(
                titleText,
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: <Widget>[
              SizedBox(width: 25,),
              Text("R\$ ", style: TextStyle(color: Colors.white ,fontSize: 35),),
              Container(
                width: 200,
                child: TextFormField(
                  style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),
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
    );
  }
}
