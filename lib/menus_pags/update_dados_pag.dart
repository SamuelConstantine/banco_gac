import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'confirm_update_pag.dart';


class UpdateDados extends StatefulWidget {
  @override
  _UpdateDadosState createState() => _UpdateDadosState();
}

class _UpdateDadosState extends State<UpdateDados> {
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
            "Meus dados",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Text("Daniel",style: TextStyle(
                  fontSize: 23,
                  color: Theme.of(context).primaryColorLight,
                ),
                ),
                Icon(FontAwesomeIcons.qrcode, size: 150, color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: <Widget>[
                      Text("Daniel Simplorio Gomes",style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      ),
                      Text("Banco 77 - Banco GAC",style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      ),
                      Text("Agência: 0001",style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      ),
                      Text("Conta: 000000-1",style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColorLight,
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConrfimUpdate()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(15),
                            ),
                            color: Colors.amber
                          ),
                          child: Icon(Icons.person,color: Colors.white, size: 30,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:15 ,right: 15),
                          child: Text("Alterar meus dados",style: TextStyle(color: Colors.white,fontSize: 18),),
                        ),
                        Icon(Icons.arrow_forward_ios,size: 25,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context). primaryColor,
                  height: 20,
                  thickness: 3,
                  indent: 70,
                  endIndent: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: RaisedButton(
                     onPressed: (){

                      },
                      padding: EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      color: Colors.transparent,
                      child: Text("Sair da conta",style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
