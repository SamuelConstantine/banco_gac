import 'package:flutter/material.dart';

import 'check_transfer_pag.dart';

class finishTransfer extends StatefulWidget {
  @override
  _finishTransferState createState() => _finishTransferState();
}

class _finishTransferState extends State<finishTransfer> {
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
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body:Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Você está transferindo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("R\$ 67,00",style: TextStyle(fontSize: 20,color: Theme.of(context).primaryColor),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Você está transferindo",style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Divider(
                  color: Theme.of(context).primaryColor,
                  height: 3,
                  thickness: 2,
                  indent: 0,
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: <Widget>[
                        Text("Transferindo hoje",style: TextStyle(fontSize: 18,color: Colors.white),),
                        Spacer(),
                        Text("25/05/2020",style: TextStyle(fontSize: 18,color: Theme.of(context).primaryColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: <Widget>[
                        Text("Transferido de",style: TextStyle(fontSize: 18,color: Colors.white),),
                        Spacer(),
                        Text("Banco GAC",style: TextStyle(fontSize: 18,color: Colors.grey)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Row(
                      children: <Widget>[
                        Text("Transferindo para",style: TextStyle(fontSize: 18,color: Colors.white),),
                        Spacer(),
                        Text("Banco GAC",style: TextStyle(fontSize: 18,color: Theme.of(context).primaryColor)),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.grey[700],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Text("CPF",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Spacer(),
                                Text("010.100.110-11",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Text("Nome",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Spacer(),
                                Text("Emanuel Simplorio Galileia",style: TextStyle(color: Colors.grey,fontSize: 18),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Text("Agência",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Spacer(),
                                Text("0001",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 18),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 20),
                            child: Row(
                              children: <Widget>[
                                Text("Conta",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Spacer(),
                                Text("000000-1",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 18),)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ) ,
                  )
                ],
              ),
          ],

        ),
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> checkTransfer()));
                          //FORA DO HORARIO SERVIÇO PAG
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> OutOfServicePag()));
                          },
                        color: Colors.grey[700],
                        elevation: 0,
                        child: Text(
                          "Confirmar transferência",
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
      ),
    );
  }
}
