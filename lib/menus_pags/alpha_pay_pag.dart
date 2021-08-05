import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'boleto_pay_pag.dart';

class alphaPayPag extends StatefulWidget {
  @override
  _alphaPayPagState createState() => _alphaPayPagState();
}

class _alphaPayPagState extends State<alphaPayPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Alpha Card Dgital",
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                width: 80,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Com o Alpha Card você pode\n parcelar boletos",style: TextStyle(color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,fontSize: 20),
                      textAlign: TextAlign.center,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Parcela seus boletos e evite perdê-los",style: TextStyle(color: Colors.white,fontSize: 16),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white)
                      ),
                        child: Icon(Icons.launch,size: 40,color: Colors.white,)),
                    Text("Pegue o boleto\n que você vai parcelar",style:TextStyle(color: Colors.white,fontSize: 18),
                    textAlign: TextAlign.right,),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Icon(Icons.launch,size: 40,color: Colors.white,)),
                    Text("Realizar a confirmação de dados",style:TextStyle(color: Colors.white,fontSize: 18),
                      textAlign: TextAlign.left,),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Icon(Icons.launch,size: 40,color: Colors.white,)),
                    Text("Escolha uma das propostas disponiveis de parcelamento",style:TextStyle(color: Colors.white,fontSize: 18),
                      textAlign: TextAlign.center,),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BoletoPayPag()));
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                  ),
                  child: Icon(Icons.comment,color: Theme.of(context).primaryColor,size: 30,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
