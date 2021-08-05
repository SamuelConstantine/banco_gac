import 'package:banco_gac/menus_pags/help_suport_pag.dart';
import 'package:banco_gac/menus_pags/transfer_account_pag.dart';
import 'package:banco_gac/menus_pags/update_dados_pag.dart';
import 'package:banco_gac/menus_pags/without_Internet_pag.dart';
import 'package:banco_gac/screens/account_balance_screen.dart';
import 'package:banco_gac/screens/payment_screen.dart';
import 'package:banco_gac/screens/solutions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'deposit_screen.dart';

class HomeScreen extends StatefulWidget {

  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

    
 
    final colorBg = Theme.of(context).primaryColorDark;
    final colorText = Theme.of(context).primaryColorLight;

    final styleText = TextStyle(fontSize: 18, color: colorText);
    final styleBold = TextStyle(fontSize: 18, color: colorText, fontWeight: FontWeight.bold);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Padding(
        padding: const EdgeInsets.only(top:56, left: 15),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                    child: Text("Daniel Simplório Gomes" , style: styleBold, ),
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UpdateDados()));
                  },
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    Text("AG:", style: styleBold,),
                    Text("0001", style: styleText,),
                    SizedBox(width: 10,),
                    Text("C: ",style: styleBold,),
                    Text("000000000-1",style: styleText,),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                  Text("Meu saldo:", style: styleBold,),
                  SizedBox(width: 5,),
                  visibility == true ? Text("R\$ 67,77", style: styleBold,)
                      :Container(
                    height: 20,
                    width: 80,
                    color: colorText,
                  ),
                    SizedBox(width: 10,),
                    InkWell(child:
                    Icon(visibility == true ? Icons.visibility :Icons.visibility_off , color: colorText,),
                      onTap: (){
                        visibility == true ?
                        setState(() {
                          visibility = false;
                        }): setState(() {
                          visibility = true;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CarouselSlider(
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
                            child: i ==  1 ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context)=>DepositScreen())
                                        );
                                      },
                                      child: Container(height: 125, width: 125,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                        color: Theme.of(context).primaryColorDark,
                                      border: Border.all(color: colorText,
                                      width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                               Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                               SizedBox(height: 20,),
                                               Text("Depositar", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AccountBalance()));
                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Saldo em conta", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 40,),
                                Row(
                                  children: <Widget>[
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PaymentScreen()));
                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Pagamentos", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TransfeAccountPag()));
                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Transferêcia", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ):
                            i == 2 ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Spacer(),
                                    InkWell(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SolutionsScreen()));
                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Soluções", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Investimentos", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 40,),
                                Row(
                                  children: <Widget>[
                                    Spacer(),
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Recarga", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: Container(height: 125, width: 125,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                            color: Theme.of(context).primaryColorDark,
                                            border: Border.all(color: colorText,
                                                width: 2)),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                                              SizedBox(height: 20,),
                                              Text("Cartão", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ],
                            ):
                            Scaffold()
                          );
                        },
                      );
                    }).toList(),
                  ),
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
                            padding: const EdgeInsets.only(left:8.0, right: 8, top: 40),
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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Spacer(),
                        Text("Termos e Condições", style: TextStyle(color:
                        Theme.of(context).primaryColorLight, decoration: TextDecoration.underline ,fontSize: 13 ),
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> helpSuportPag()));
                          },
                          child: Text("Ajudar e Suporte", style: TextStyle(color:
                          Theme.of(context).primaryColorLight, decoration: TextDecoration.underline, fontSize: 13)
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){
                       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> withoutInterPag()));
                      },
                      child: Text("Configurações", style: TextStyle(color:
                      Theme.of(context).primaryColorLight,
                        decoration:TextDecoration.underline,
                        fontSize: 14,)
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

