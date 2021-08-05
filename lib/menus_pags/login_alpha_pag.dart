import 'package:flutter/material.dart';

import 'my_alpha_pag.dart';

class loginAlphaCard extends StatefulWidget {
  @override
  _loginAlphaCardState createState() => _loginAlphaCardState();
}

class _loginAlphaCardState extends State<loginAlphaCard> {
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
            "Alpha Card",
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
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: Text("Digite para seu CPF para localizarmos e conectar o seu Alpha Card...", style:
                TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 200,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Row(
                        children: <Widget>[
                          Text("Digite aqui:",style: TextStyle(color: Colors.white,fontSize: 20),),
                          SizedBox(width: 15,),
                          Container(
                            width: 200,
                            child: TextFormField(
                              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  hintText: "000-000-000.00",
                                  hintStyle: TextStyle( color: Colors.white, fontSize:18),
                                  fillColor: Colors.white,
                                  labelStyle: TextStyle(color: Colors.white)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    height: 5,
                    thickness: 3,
                    indent: 0,
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> _SplashState()));
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

class _SplashState extends StatefulWidget {
  @override
  __SplashStateState createState() => __SplashStateState();
}

class __SplashStateState extends State<_SplashState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: Icon(Icons.build,size: 50,),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> myAlphaPag()));
    });
  }
}


