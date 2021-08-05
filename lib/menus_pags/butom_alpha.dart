import 'package:banco_gac/screens/deposit_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_alpha_pag.dart';

class alphaCardPag extends StatefulWidget {
  @override
  _alphaCardPagState createState() => _alphaCardPagState();
}

class _alphaCardPagState extends State<alphaCardPag> {

  bool visibility ;

  List slides = [1,2];

  int _current = 0;

  List<T> map<T>(List list, Function handler){
    List<T> result =[];
    for(var i =0 ; i<list.length; i++){
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.clear,
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
      backgroundColor:Colors.black ,
      body: Stack(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
                height:  MediaQuery.of(context).size.height,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                onPageChanged: (index, reason){
                  setState(() {
                    _current = index;
                  });
                }
            ),
            items: slides.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: Container(
                      width: MediaQuery.of(context).size.height,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.black,
                      child: Center(
                          child: i ==  1 ?  Stack(
                            children: <Widget>[
                              Container(
                                height:  MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.height,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Conheça o Alpha Card ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 20,top: 40),
                                              child: Text("O Alpha Card é uma solução que ajuda você a economizar",style: TextStyle(color: Colors.grey,fontSize: 18),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 20,),
                                              child: Text("Um novo modo de lidar com seus gastos",style: TextStyle(color: Colors.grey,fontSize: 18),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 20,),
                                              child: Text("Explore o desconhecido na palma da sua mão",style: TextStyle(color: Colors.grey,fontSize: 18),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 20,),
                                              child: Text("Peça o seu experimente grátis !",style: TextStyle(color: Colors.grey,fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Container(
                                    height: 100,
                                    width: MediaQuery.of(context).size.height,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 30),
                                          child: Divider(
                                            color: Theme.of(context).primaryColorLight,
                                            height: 5,
                                            thickness: 3,
                                            indent: 0,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Spacer(),
                                            Text("Solicitar Alpha Card",style:TextStyle(color: Theme.of(context).primaryColor,fontSize:20,),),
                                            Spacer(),
                                            InkWell(
                                                onTap: (){

                                                },
                                                child: Icon(Icons.arrow_forward_ios,size: 22,color: Theme.of(context).primaryColor,)),
                                            Spacer(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ):
                          Stack(
                            children: <Widget>[
                              Container(
                                height:  MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.height,

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text("Alpha Card digital",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 40,top: 40),
                                              child: Text("Para você que já tem o Alpha Card, "
                                                  "agora ficará muito mais facil usa-lo "
                                                  "conectando o seu Alpha Card na sua "
                                                  "Conta Alpha, você terá acesso a ele de "
                                                  "forma muito mais rápida e fácil",style: TextStyle(color: Colors.white,fontSize: 18),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: Container(
                                    height: 100,
                                    //color: Colors.blue,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 30),
                                          child: Divider(
                                            color: Theme.of(context).primaryColorLight,
                                            height: 5,
                                            thickness: 3,
                                            indent: 0,
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Spacer(),
                                            Text("Conectar Alpha Card",style:TextStyle(color: Theme.of(context).primaryColor,fontSize:20,),),
                                            Spacer(),
                                            InkWell(
                                                onTap: (){
                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginAlphaCard()));
                                                },
                                                child: Icon(Icons.arrow_forward_ios,size: 22,color: Theme.of(context).primaryColor,)),
                                            Spacer(),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(slides, (index, i){
                  return Padding(
                    padding: const EdgeInsets.only(left:5, right: 5, ),
                    child: Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2.0),
                      decoration: BoxDecoration(shape: BoxShape.circle,
                          color: _current == index ? Theme.of(context).primaryColor: Colors.white),
                    ),
                  );
                }),
              ),
            ),
          ),

        ],
      ),
    );
  }


}
