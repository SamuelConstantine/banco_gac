import 'package:banco_gac/screens/deposit_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'finish_plans_pag.dart';



class PlansPag extends StatefulWidget {
  @override
  _PlansPagState createState() => _PlansPagState();
}

class _PlansPagState extends State<PlansPag> {

  bool visibility ;

  List slides = [1,2,3];

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
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
            onPressed: (){
              Navigator.of(context).pop();
            },),
          title: Text(
            "Alpha pay",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: 100,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Deslize para ver\n outras propostas",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,),
            ),
          ),
          Stack(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                    height: 400.0,
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
                          child: i ==  1 ? Container(
                            width: 270,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                              border: Border.all(
                                color: Colors.white
                              )
                            ),
                            child: Column(
                              children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Row(
                                      children: <Widget>[
                                        Spacer(),
                                        Text("Valor do boleto:",style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                                        SizedBox(width: 10,),
                                        Text("R\$ 300",style: TextStyle(color: Colors.white,fontSize: 18),),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text("3x",style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 50),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("R\$ 100,",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 50),),
                                    Text("00",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 30),),
                                  ],
                                ),

                              ],
                            ),
                          ):
                          i == 2 ? Container(
                            width: 270,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.white
                                )
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(),
                                      Text("Valor do boleto:",style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                                      SizedBox(width: 10,),
                                      Text("R\$ 300",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text("7x",style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 50),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("R\$ 42,",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 50),),
                                    Text("86",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 30),),
                                  ],
                                ),

                              ],
                            ),
                          ):
                          Container(
                            width: 270,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                border: Border.all(
                                    color: Colors.white
                                )
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(),
                                      Text("Valor do boleto:",style: TextStyle(color: Colors.grey[600],fontSize: 18),),
                                      SizedBox(width: 10,),
                                      Text("R\$ 300",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text("10x",style: TextStyle(color:Theme.of(context).primaryColor,fontSize: 50),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("R\$ 30,",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 50),),
                                    Text("00",style: TextStyle(color:Theme.of(context).primaryColorLight,fontSize: 30),),
                                  ],
                                ),

                              ],
                            ),
                          )
                      );
                    },
                  );
                }).toList(),
              ),
              Positioned.fill(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(slides, (index, i){
                      return Padding(
                        padding: const EdgeInsets.only(left:5, right: 5, top: 20),
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        Divider(
                          color: Theme.of(context).primaryColor,
                          height: 5,
                          thickness: 2,
                          indent: 0,
                        ),
                        RaisedButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FinishPlansPag()));
                        },
                          color: Colors.black,
                          child: Text("Aceitar proposta", style: TextStyle(color: Colors.white,fontWeight:
                          FontWeight.bold,
                              fontSize: 20),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
