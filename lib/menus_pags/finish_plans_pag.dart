import 'package:flutter/material.dart';

class FinishPlansPag extends StatefulWidget {
  @override
  _FinishPlansPagState createState() => _FinishPlansPagState();
}

class _FinishPlansPagState extends State<FinishPlansPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(icon: Icon(Icons.clear, color: Colors.white,),
          onPressed: (){
            Navigator.of(context).pop();
          },),
        title: Text(
          "Alpha pay",
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text("Você selecionou essa proposta:",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                      width: 270,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          border: Border.all(
                              color: Theme.of(context).primaryColor
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Row(
                              children: <Widget>[
                                Spacer(),
                                Text("Valor do boleto:",style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                                SizedBox(width: 10,),
                                Text("R\$ 300",style: TextStyle(color: Colors.white,fontSize: 18),),
                                Spacer(),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text("10x",style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 50),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("R\$ 30,",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 50),),
                              Text("00",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 30),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text("Ao confirmar você aceita os nossos",style: TextStyle(color:Colors.grey[600],fontSize: 18)),
                  ),
                  Text("Termos e pliticas de uso",style: TextStyle(color:Colors.grey[600],fontSize: 18),)
                ],

              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 2,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FinishPlansPag()));
                  },
                    color: Colors.black,
                    child: Text("Comfirmar", style: TextStyle(color: Colors.white,fontWeight:
                    FontWeight.bold,
                        fontSize: 20),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
