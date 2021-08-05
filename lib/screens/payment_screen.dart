import 'package:banco_gac/menus_pags/billet_pag.dart';
import 'package:banco_gac/menus_pags/pay_invoice_pag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
            "Pagamentos",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BilletPag()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.list,color: Colors.white,size: 55,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Pagar boleto", style: TextStyle(fontSize: 18,color: Colors.white ,fontWeight: FontWeight.bold),),
                              Text("Conta de luz, água e etc",style: TextStyle(fontSize: 18,color: Colors.grey),),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white,),
                      ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Divider(
                color: Theme.of(context).primaryColor,
                height: 5,
                thickness: 3,
                indent: 0,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PayInvoicePag()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.list,color: Colors.white,size: 55,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Pagar fatura do cartão", style: TextStyle(fontSize: 18,color: Colors.white ,fontWeight: FontWeight.bold),),
                            Text("Usando o saldo da Conta Alpha",style: TextStyle(fontSize: 18,color: Colors.grey),),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,size: 20, color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
