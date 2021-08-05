import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'confirm_account_pag.dart';

class TransfeAccountPag extends StatefulWidget {
  @override
  _TransfeAccaountPagState createState() => _TransfeAccaountPagState();
}

class _TransfeAccaountPagState extends State<TransfeAccountPag> {



  List favorites = [
     "Jhon Leitão Gomes",
     "Jhon Leitão Gomes",
     "Jhon Leitão Gomes",
     "Jhon Leitão Gomes",
  ];

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
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ComfirmAccountPag("tela1")));
                  },
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.person,size: 25,color: Colors.white,),
                          Text("Transferir para uma nova conta",style:TextStyle(color:Theme.of(context).primaryColor,
                              fontWeight:FontWeight.bold,fontSize: 22) ,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Contas salvas",style: TextStyle(color: Colors.white,fontSize: 22),),
                    Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 25,)
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColorLight,
                height: 5,
                thickness: 3,
                indent: 0,
              ),
              Container(
                height: MediaQuery.of(context).size.height/2,
                child: ListView.builder(
                    itemCount: favorites.length,
                  itemBuilder: (context, index){
                      var f = favorites[index];
                      return Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                    child: Text(f,style: TextStyle(color: Colors.white,fontSize: 18),),
                                  onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>ComfirmAccountPag("tela6")));
                                  },
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,size: 20,color: Colors.white,),
                              ],
                            ),
                          ),
                          Divider(
                            color: Theme.of(context).primaryColorLight,
                            height: 5,
                            thickness: 2,
                            indent: 0,
                          ),

                        ],
                      );
                  },
                ),
              ),


              /*Container(
                width: 200,
                height: 200,
                //color: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Não há contas salvas",style: TextStyle(color: Colors.white,fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("Quando você realizar uma transferência a conta ficará salva automaticamente"
                        ,style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18,fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),
              )*/
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60,),
                    color: Colors.white,
                  ),
                  child: Center(child: Icon(FontAwesomeIcons.qrcode,color: Theme.of(context).primaryColor,size: 40,)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
