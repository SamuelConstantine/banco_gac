import 'package:flutter/material.dart';


class TransferPag extends StatefulWidget {
  @override
  _TransferPagState createState() => _TransferPagState();
}

class _TransferPagState extends State<TransferPag> {
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
            "Transferir",
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
            child: Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Container(
                width: 350,
                height: 80,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Esses são os dados da sua",
                            style:TextStyle(color: Colors.white ,fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Conta Alpha para receber transferência",
                            style:TextStyle(color: Colors.white ,fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("na sua conta",
                            style:TextStyle(color: Colors.white ,fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColorLight,
            height: 5,
            thickness: 3,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("Agência" ,
                      style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("0001", style:TextStyle(color: Colors.white ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.content_copy,size: 35, color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("Conta" ,
                          style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("0000000-1", style:TextStyle(color: Colors.white ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.content_copy,size: 35, color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("CPF" ,
                          style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("010.011.101-01", style:TextStyle(color: Colors.white ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.content_copy,size: 35, color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("Banco" ,
                          style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("Banco GAC(777)", style:TextStyle(color: Colors.grey ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("Tipo" ,
                          style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("Conta de pagamento", style:TextStyle(color: Colors.grey ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: <Widget>[
                      Text("Método" ,
                          style:TextStyle(color: Colors.white ,fontSize: 23)
                      ),
                      Spacer(),
                      Text("TED ou DOC", style:TextStyle(color: Colors.grey ,fontSize: 20)
                      ),
                      SizedBox(width: 5,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
