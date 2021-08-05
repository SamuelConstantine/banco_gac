import 'package:flutter/material.dart';

class AlteredDataPag extends StatefulWidget {

  String dataInfo;
  String dataInfoUser;
  String dataType;
  String address;
  String home;
  String city;
  String uf;
  String complement;

  AlteredDataPag(this.dataInfo,this.dataInfoUser,this.dataType,{this.address,this.home,this.city,this.uf,this.complement});



  @override
  _AlteredDataPagState createState() => _AlteredDataPagState(dataInfo,dataInfoUser,dataType,address:address,home:home,city:city,uf:uf,complement:complement);
}

class _AlteredDataPagState extends State<AlteredDataPag> {

  final _formKey = GlobalKey<FormState>();
  String dataInfo;
  String dataInfoUser;
  String dataType;
  String address;
  String home;
  String city;
  String uf;
  String complement;


  _AlteredDataPagState(this.dataInfo,this.dataInfoUser,this.dataType,{this.address,this.home,this.city,this.uf,this.complement});

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
          backgroundColor: Colors.black
      ),
    backgroundColor: Colors.black,
     body: Form(
         key: _formKey,
         child: Stack(
           children: <Widget>[
             ListView(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                       height: 50,
                       //color: Colors.blue,
                       child:
                       Center(
                         child: Text("Certifique-se de que seus\n dados estão atualizados e corretos",style: TextStyle(color: Colors.white),
                           textAlign: TextAlign.center,
                         ),
                       ),
                   ),
                 ),
                 dataType != "address" ?
                 Padding(padding: EdgeInsets.all(15),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Text(dataInfo,style: TextStyle(color: Colors.white),
                     ),
                     TextFormField(
                       validator: (text){
                          if(text.isEmpty){
                            return "adcione a informação corretamente";
                          } else{
                            return null;
                          }
                       },
                       initialValue: dataInfoUser,
                       style: TextStyle(
                         color: Colors.white,
                       ),
                       onSaved: (value)=> dataInfoUser = value,
                       decoration: InputDecoration(
                           hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                           fillColor: Colors.white,
                           labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                       ),
                     ),
                   ],
                 ),
                 ):
                 Padding(padding: EdgeInsets.all(15),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Text(dataInfo,style: TextStyle(color: Colors.white),
                         ),
                         Spacer(),
                         Padding(
                           padding: const EdgeInsets.only(right: 55),
                           child: Text("N*",style: TextStyle(color: Colors.white),),
                         ),
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Container(
                           width: 300,
                           height: 50,
                           //color: Colors.green,
                           child: TextFormField(
                             validator: (text){
                                if(text.isEmpty){
                                  return "adcione a informação corretamente";
                                } else{
                                  return null;
                                }
                             },
                             initialValue: dataInfoUser,
                             style: TextStyle(
                               color: Colors.white,
                             ),
                             onSaved: (value)=> dataInfoUser = value,
                             decoration: InputDecoration(
                                 hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                                 fillColor: Colors.white,
                                 labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                             ),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Container(
                               width: 70,
                               height: 50,
                               //color: Colors.blue,
                               child: TextFormField(
                                 validator: (text){
                                   if(text.isEmpty){
                                     return "adcione a informação corretamente";
                                   } else{
                                     return null;
                                   }
                                 },
                                 initialValue: home,
                                 style: TextStyle(
                                   color: Colors.white,
                                 ),
                                 onSaved: (value)=> dataInfoUser = value,
                                 decoration: InputDecoration(
                                     hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                                     fillColor: Colors.white,
                                     labelStyle: TextStyle(color: Colors.white),
                                     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 25),
                       child: Row(
                         children: <Widget>[
                           Text("Cidade",style: TextStyle(color: Colors.white),
                           ),
                           Spacer(),
                           Padding(
                             padding: const EdgeInsets.only(right: 55),
                             child: Text("UF",style: TextStyle(color: Colors.white),),
                           ),
                         ],
                       ),
                     ),
                     Row(
                       children: <Widget>[
                         Container(
                           width: 300,
                           height: 50,
                           //color: Colors.green,
                           child: TextFormField(
                             validator: (text){
                               if(text.isEmpty){
                                 return "adcione a informação corretamente";
                               } else{
                                 return null;
                               }
                             },
                             initialValue: city,
                             style: TextStyle(
                               color: Colors.white,
                             ),
                             onSaved: (value)=> dataInfoUser = value,
                             decoration: InputDecoration(
                                 hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                                 fillColor: Colors.white,
                                 labelStyle: TextStyle(color: Colors.white),
                                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                             ),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Container(
                               width: 70,
                               height: 50,
                               //color: Colors.blue,
                               child: TextFormField(
                                 validator: (text){
                                   if(text.isEmpty){
                                     return "adcione a informação corretamente";
                                   } else{
                                     return null;
                                   }
                                 },
                                 initialValue: uf,
                                 style: TextStyle(
                                   color: Colors.white,
                                 ),
                                 onSaved: (value)=> dataInfoUser = value,
                                 decoration: InputDecoration(
                                     hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                                     fillColor: Colors.white,
                                     labelStyle: TextStyle(color: Colors.white),
                                     enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                     Padding(
                       padding: const EdgeInsets.only(top: 25),
                       child: Text("Complemento [Opcional]",style: TextStyle(color: Colors.white),
                       ),
                     ),
                     Row(
                       children: <Widget>[
                         Expanded(
                           child: TextFormField(
                             validator: (text){
                               if(text.isEmpty){
                                 return "adcione a informação corretamente";
                               } else{
                                 return null;
                               }
                             },
                             initialValue: complement,
                             style: TextStyle(
                               color: Colors.white,
                             ),
                             onSaved: (value)=> dataInfoUser = value,
                             decoration: InputDecoration(
                                 hintStyle: TextStyle( color: Colors.white, fontSize: 35),
                                 fillColor: Colors.white,
                                 labelStyle: TextStyle(color: Colors.white),
                                 enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
                 ),
               ],
             ),
             Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 height: 90,
                 //color: Colors.blue,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(height: 25,),
                     Divider(
                       color: Theme.of(context).primaryColorLight,
                       height: 5,
                       thickness: 3,
                       indent: 0,
                     ),
                     RaisedButton(onPressed: (){
                       //Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ConfirmDeposit()));
                     },
                       color: Colors.black,
                       child: Text("Confirmar", style: TextStyle(color: Colors.white,fontWeight:
                       FontWeight.bold,
                           fontSize: 20),),
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
