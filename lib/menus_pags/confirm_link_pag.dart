import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmLink extends StatefulWidget {
  @override
  _ConfirmLinkState createState() => _ConfirmLinkState();
}

class _ConfirmLinkState extends State<ConfirmLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(icon: Icon(Icons.close, color: Colors.white, size: 30,),
            onPressed: (){
              Navigator.of(context).pop();
            },),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: (){

                },
                  child: Container(
                    width: 50,
                      height: 50,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white,)),
                      child: Icon(
                        Icons.share, color: Colors.white, size: 25,))),
            ),
        ],
      ),
      backgroundColor: Colors.black,
      body:
      Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  width: 300,
                  height: 160,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                          "Compartilhe o link com a pessoa que você deseja cobrar...",
                        style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,),
                        textAlign: TextAlign.center,
                        ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  height: 35,
                  decoration: BoxDecoration(border: Border.all(color: Color(0xffDAA520 ,),)),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Text("https://www.didierboelens.com/2018/04/hint-1-hide-back-arrow-and-use-close-button/",
                      style: TextStyle(
                      color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Icon(Icons.content_copy,color: Colors.white, size: 35,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                width:300,
                height: 200,
                child: Text(
                    "Faça uma combrança usando o meio digital enviando um link de pagamento para receber",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
      ),
    );
  }
}
