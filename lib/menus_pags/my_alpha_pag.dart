import 'package:flutter/material.dart';

class myAlphaPag extends StatefulWidget {
  @override
  _myAlphaPagState createState() => _myAlphaPagState();
}

class _myAlphaPagState extends State<myAlphaPag> {
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
          "Alpha Card Dgital",
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return PopMenu.choices.map((String choices) {
                return PopupMenuItem<String>(
                  value: choices,
                  child: Text(choices),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(

              // gradient: LinearGradient(
              //  begin: Alignment.center,
              //  end: Alignment.bottomCenter,
              //colors:[Colors.black,Theme.of(context).primaryColor])
              ),
          child: ListView(
            children: <Widget>[
              Center(
                  child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      "Danil simplório Gomes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("0000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Situação:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        Text(" Inativo",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                            )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Text("Vencimento",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      Spacer(),
                      Text("07/04/2020",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          )),
                      Spacer(),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(String choices) {
    if (choices == PopMenu.renew) {
      print('setetet');
    } else
      choices == {print('laolaolao')};
  }
}

class PopMenu<BuildContext> {
  static String renew = 'Renovar Alpha Card';
  static String disconnect = 'desconectar Alpha Card';
  static List<String> choices = <String>[renew, disconnect];
}
