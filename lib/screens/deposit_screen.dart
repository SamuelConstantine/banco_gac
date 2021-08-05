import 'package:banco_gac/menus_pags/deposit_pag.dart';
import 'package:banco_gac/menus_pags/link_pag.dart';
import 'package:banco_gac/menus_pags/transfer_pag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
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
          "Depositar",
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DepositPag()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.comment,
                      color: Theme.of(context).primaryColorLight,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Depositar por boleto",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 3 ,),
                        Center(
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Text(
                                "Pague no local que desejar e receba "
                                "o dinheiro na sua Carta Alpha em "
                                "até 3 dias Úteis ",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorLight,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            height: 5,
            thickness: 3,
            indent: 0,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TransferPag()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.phone_android,
                      color: Theme.of(context).primaryColorLight,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Transfira para sua conta",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 3 ,),
                        Center(
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Text(
                                "Transfira do outro Banco para sua Conta Alpha",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorLight,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size:30,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            height: 5,
            thickness: 3,
            indent: 0,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LinkPag()));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.navigation,
                      color: Theme.of(context).primaryColorLight,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Cobrar um valor online",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(height: 3 ,),
                        Center(
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Text(
                                "Faça uma cobrança usando o meio digital enviando um link do pagamento para receber ",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorLight,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            height: 5,
            thickness: 3,
            indent: 0,
          ),
          Center(
            child: InkWell(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.monetization_on,
                      color: Theme.of(context).primaryColorLight,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Portabilidade do salário",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Center(
                          child: Container(
                            width: 250,
                            height: 80,
                            child: Text(
                                "Receba o seu salário na sua conta Alpha.okokokokokokokokokok",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColorLight,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            height: 5,
            thickness: 3,
            indent: 0,
          ),
        ],
      ),
    );
  }
}
