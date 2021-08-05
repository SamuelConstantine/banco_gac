import 'package:flutter/material.dart';

class ConfirmDeposit extends StatefulWidget {
  @override
  _ConfirmDepositState createState() => _ConfirmDepositState();
}

class _ConfirmDepositState extends State<ConfirmDeposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body:
      Stack(
        children: <Widget>[
          Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                          "R\$ 50,00",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 100,),
                      Container(
                        width: 300,
                        height: 50,
                        child: Text(
                            "89128.90238.9123912.389012389238938585858585858585841890",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          
                        },
                        child: Icon(Icons.content_copy, size: 35,
                        color: Colors.white,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:  Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, bottom: 35),
              child: InkWell(
                onTap: (){

                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Enviar boleto via e-mail",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios,
                      color: Colors.white, size: 25,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
