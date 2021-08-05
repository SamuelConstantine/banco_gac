import 'package:flutter/material.dart';

class AccountBalance extends StatefulWidget {



  @override
  _AccountBalanceState createState() => _AccountBalanceState();
}


class _AccountBalanceState extends State<AccountBalance> {

  bool days = true;
  bool transition = false;
  bool buy = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30,),
          onPressed: (){
            Navigator.of(context).pop();
          },),
        title: Text("Saldo em conta",style:TextStyle(color: Colors.white,fontSize: 22)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
     body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 20,bottom: 20),
            child: Container(
              width: 200,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Saldo disponivel:",style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 48),
                    child: Text("R\$ 67,77", style: TextStyle(
                      color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold,
                      fontSize: 35
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1.5,
              children: List.generate(3, (index) {
                return Center(
                  child: index == 0 ? InkWell(
                    onTap: (){
                      setState(() {
                        days = true;
                        transition = false;
                        buy = false;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: days == true && transition == false && buy==false?
                          Theme.of(context).primaryColor : Colors.white),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Container(
                                child: Text("Ùltimos",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("90",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                                SizedBox(width: 10,),
                                Text("dias",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ) : index == 1 ? InkWell(
                    onTap: (){
                      setState(() {
                        days = false;
                        transition = true;
                        buy = false;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                        decoration: BoxDecoration(border: Border.all(color: days == false && transition == true && buy== false?
                        Theme.of(context).primaryColor : Colors.white),),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Icon(Icons.phone_android,size: 40,color: Colors.white,),

                            ),
                            Center(
                              child: Text("Transações online",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ): InkWell(
                    onTap: (){
                      setState(() {
                        days = false;
                        transition = false;
                        buy = true;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(border: Border.all(color:days == false && transition == false && buy==true?
                            Theme.of(context).primaryColor :  Colors.white),),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.credit_card,size: 40,color: Colors.white,),
                            Center(
                              child: Text("Compras no cartão",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              })
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
              child: days == true ? Days():transition == true ? Transition(): Buy()),
        ],
     ),
    );
  }
}

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25,right: 25),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                    child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Tranferência recebida",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                      SizedBox(height: 4,),
                      Text("Adriana O.Rodrigues",style: TextStyle(color: Colors.grey, fontSize: 20)),
                      SizedBox(height: 4,),
                      Text("R\$ 522,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: <Widget>[
                        Text("Hoje",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        Text("12:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.credit_card,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Compra no débito",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("Pizzaria Maria",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 100,01",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("Sábado",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("13:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.comment,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Pagamento efetuado",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("Puteiro do seu zé",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 155,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("20 Mar",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("19:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Transition extends StatefulWidget {
  @override
  _TransitionState createState() => _TransitionState();
}

class _TransitionState extends State<Transition> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25,right: 25),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                    child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Tranferência recebida",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                      SizedBox(height: 4,),
                      Text("Adriana O.Rodrigues",style: TextStyle(color: Colors.grey, fontSize: 20)),
                      SizedBox(height: 4,),
                      Text("R\$ 522,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: <Widget>[
                        Text("Hoje",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        Text("12:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tranferêcia enviada",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("Maria Aparecida Nunes",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 100,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("Sábado",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("13:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Transferência enviada",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("Daniel Eculino Ramos",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 55,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("20 Mar",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("19:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Buy extends StatefulWidget {
  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25,right: 25),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                    child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Compra no débito",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                      SizedBox(height: 4,),
                      Text("Mercado aruda",style: TextStyle(color: Colors.grey, fontSize: 20)),
                      SizedBox(height: 4,),
                      Text("R\$ 522,36",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: <Widget>[
                        Text("Hoje",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        Text("12:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Comprar no débito",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("MacBook pro",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 1000,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("Sábado",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("13:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 15 ,bottom: 20),
                      child: Icon(Icons.phone_android,size: 35,color: Colors.white, ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Compra no débito",style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold)),
                        SizedBox(height: 4,),
                        Text("Esphia MIX",style: TextStyle(color: Colors.grey, fontSize: 20)),
                        SizedBox(height: 4,),
                        Text("R\$ 16,00",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16)),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: <Widget>[
                          Text("20 Mar",style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text("19:00",style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



