import 'package:banco_gac/menus_pags/out_of_service_pag.dart';
import 'package:banco_gac/menus_pags/transfer_made_pag.dart';
import 'package:flutter/material.dart';

class checkTransfer extends StatefulWidget {
  @override
  _checkTransferState createState() => _checkTransferState();
}

class _checkTransferState extends State<checkTransfer> {

  bool _obscureText = false;

  String _password;


  void _toggle(){
    setState(() {
      _obscureText =!_obscureText;
    });

  }
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
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                width: 100,
                  height: 100,
                  child: Center(
                      child:
                      Text("Insira a senha para prosseguir",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                  ),
              ),
              Text("Digite aqui:",style: TextStyle(color: Theme.of(context).primaryColor),),
              TextFormField(
                decoration:  InputDecoration(
                  icon:  Padding(
                    padding:  EdgeInsets.only(top: 15),
                  ),
                  suffixIcon: GestureDetector(
                    child:  Icon(_obscureText == false ? Icons.visibility: Icons.visibility_off),
                    onTap: (){
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                validator: (val) => val.length<6 ? 'Senha muito curta': null,
                onSaved: (val) => _password = val,
                obscureText: _obscureText == false ? true : false,
                style: TextStyle(color: Colors.white),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 2,
                thickness: 3,
                indent: 0,
              ), //FlatButton(onPressed: _toggle, child: Text(_obscureText ? "Mostrar" : "ocultar", style: TextStyle(color: Colors.white),))
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> transferMadePag()));
                    },

                    color: Colors.black,
                    child: Text(
                      "Confirmar ",
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
