import 'package:banco_gac/menus_pags/alpha_pay_pag.dart';
import 'package:banco_gac/menus_pags/butom_alpha.dart';
import 'package:banco_gac/menus_pags/plans_pag.dart';
import 'package:flutter/material.dart';

class SolutionsScreen extends StatefulWidget {
  @override
  _SolutionsScreenState createState() => _SolutionsScreenState();
}

class _SolutionsScreenState extends State<SolutionsScreen> {
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
          "Minha conta",
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            width: 100,
            height: 150,
            child: Center(child: Text("Escolha uma solução",style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> _SplashState()));
                    },
                    child: Container(height: 125, width: 125,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColorDark,
                          border: Border.all(color:Colors.white,
                              width: 2)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.account_balance, color: Theme.of(context).primaryColorLight,),
                            SizedBox(height: 20,),
                            Text("Alpha Card", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> alphaPayPag()));
                    },
                    child: Container(height: 125, width: 125,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColorDark,
                          border: Border.all(color: Colors.white,
                              width: 2)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.comment, color: Theme.of(context).primaryColorLight,),
                            SizedBox(height: 20,),
                            Text("Alpha Pay", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlansPag()));
                    },
                    child: Container(height: 125, width: 125,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColorDark,
                          border: Border.all(color: Colors.white,
                              width: 2)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                            SizedBox(height: 20,),
                            Text("Consiqlieri", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
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
                          border: Border.all(color: Colors.white,
                              width: 2)),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add, color: Theme.of(context).primaryColorLight,),
                            SizedBox(height: 20,),
                            Text("Meta financeira", style: TextStyle(color: Theme.of(context).primaryColorLight,)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          )
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
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> alphaCardPag()));
    });
  }
}
