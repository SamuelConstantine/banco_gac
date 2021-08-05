import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class withoutInterPag extends StatefulWidget {
  @override
  _withoutInterPagState createState() => _withoutInterPagState();
}

class _withoutInterPagState extends State<withoutInterPag> {
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
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.battery_alert,size: 100,color: Theme.of(context).primaryColor,),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Ocorreu um problema ao\n carregar os dados",style: TextStyle(color: Colors.white,fontSize: 18),
              textAlign: TextAlign.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 20),
              child: Text("Por favor, verifique sua conexão\n com a rede e tente novamente em breve",style: TextStyle(color: Colors.white,fontSize: 18),
              textAlign: TextAlign.center,),
            ),
            Icon(Icons.refresh,size: 50,color: Theme.of(context).primaryColor,)
          ],
        ),
      ),
    );
  }
}
