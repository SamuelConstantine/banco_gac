import 'package:banco_gac/menus_pags/plans_pag.dart';
import 'package:flutter/material.dart';


class ChoiceCartaoPag extends StatefulWidget {
  @override
  _ChoiceCartaoPagState createState() => _ChoiceCartaoPagState();
}

class _ChoiceCartaoPagState extends State<ChoiceCartaoPag> {
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
      body: Stack(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Escolha ou cadastre\n um cartão",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
            ),
          ),
          Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Nenhum cartão cadastro",style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18),),
                    Text("Cadatre um cartão de crédito para\n parcelar o seu boleto",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 18),
                      textAlign: TextAlign.center,)
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(

                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(child: Text("Cadastra o meu cartão",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 17),)),
                  ),
                  onTap: (){

                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25,bottom: 10),
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PlansPag()));
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(child: Text("Excluir cartão",style: TextStyle(color: Theme.of(context).primaryColorLight,fontSize: 17),)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ) ,
    );
  }
}
