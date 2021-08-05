import 'package:banco_gac/menus_pags/plans_pag.dart';
import 'package:flutter/material.dart';

import 'choice_cartao_pag.dart';


class ComfirmBoletoPag extends StatefulWidget {
  @override
  _ComfirmBoletoPagState createState() => _ComfirmBoletoPagState();
}

class _ComfirmBoletoPagState extends State<ComfirmBoletoPag> {
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
            "Comfirmação",
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
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Text("Valor a ser pago",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("R\$ 300,00",style: TextStyle(color: Colors.white,fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 20),
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                    height: 5,
                    thickness: 2,
                    indent: 0,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text("Data de vencimento:",style:TextStyle(color: Colors.white,fontSize: 18),),
                    Spacer(),
                    Text("20/03/2020",style:TextStyle(color: Colors.white,fontSize: 18),),
                    Spacer(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 30),
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                    height: 5,
                    thickness: 2,
                    indent: 0,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,right: 20,left: 20,bottom: 30),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Para:",style:TextStyle(color: Colors.white,fontSize: 18),),
                            Spacer(),
                            Text("AMAZON SERVIÇOS",style:TextStyle(color: Colors.white,fontSize: 18),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30),
                          child: Row(
                            children: <Widget>[
                              Text("Banco:",style:TextStyle(color: Colors.white,fontSize: 18),),
                              Spacer(),
                              Text("B.OF A.MERRIL LYNCH\n B.MULT.S.A",style:TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.right,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30),
                          child: Row(
                            children: <Widget>[
                              Text("Código\ndo boleto",style:TextStyle(color: Colors.white,fontSize: 18),),
                              Spacer(),
                              Text("755900.00331 89850.768667\n6555.799744\n3 818200000309",style:TextStyle(color: Colors.white,fontSize: 18),
                              textAlign: TextAlign.right,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 3,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChoiceCartaoPag()));
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
