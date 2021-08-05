import 'package:flutter/material.dart';

class OutOfServicePag extends StatefulWidget {
  @override
  _OutOfServicePagState createState() => _OutOfServicePagState();
}

class _OutOfServicePagState extends State<OutOfServicePag> {


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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.timer,size: 100,color: Theme.of(context).primaryColor,),
              Text("Fora do horário \n de serviço",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                style: TextStyle(color: Colors.white,fontSize: 20),
                children: <TextSpan>[
                  TextSpan(text: "A sua tranferência será enviada no\n próximo dia útil das",),
                  TextSpan(text: " 6:00h ",style: TextStyle(color: Theme.of(context).primaryColor)),
                  TextSpan(text: "às",),
                  TextSpan(text: " 16:59",style: TextStyle(color: Theme.of(context).primaryColor,)),
                ]
              ))
            ],
          )
        ],
      ),
    );
  }
}

