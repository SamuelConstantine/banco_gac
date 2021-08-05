import 'package:flutter/material.dart';



class transferMadePag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.clear,size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.check,size: 100,color: Theme.of(context).primaryColor,),
                  Text("Transferência\nrealizada",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,),
                ],
              ),
              SizedBox(height: 25,),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text:  TextSpan(
                        style: TextStyle(color: Colors.white,fontSize: 20),
                        children: <TextSpan>[
                          TextSpan(text: "R\$ 67,00 ",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,fontSize: 23)),
                          TextSpan(text: "foram enviados para\n Emanuel Simplorio Galileia",),
                        ]
                    )),
              )
            ],
          ),
          Align(
            alignment:Alignment.bottomCenter,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Divider(
                      color: Theme.of(context).primaryColorLight,
                      height: 5,
                      thickness: 2,
                      indent: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: InkWell(onTap: (){

                      },
                          child: Text("Ver comprovante",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    ),
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

