import 'package:banco_gac/menus_pags/altered_data_pag.dart';
import 'package:flutter/material.dart';

class ConrfimUpdate extends StatefulWidget {
  @override
  _ConrfimUpdateState createState() => _ConrfimUpdateState();
}

class _ConrfimUpdateState extends State<ConrfimUpdate> {
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Text("E-mail", style: TextStyle(color: Colors.white ,fontSize: 18),),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AlteredDataPag("Email","Igor@gmail.com","email")));
                    },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("Igor@gmail.com",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white, size: 22,),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 10,
                thickness: 3,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Telefone", style: TextStyle(color: Colors.white ,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AlteredDataPag("Telefone","(85) 4854-8788","phone")));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child:Text("(85) 4854-8788",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white, size: 22,),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 10,
                thickness: 3,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Celular", style: TextStyle(color: Colors.white ,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AlteredDataPag("Celular","(85) 987246857","mobile")));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("(85) 987246857",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white, size: 22,),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 10,
                thickness: 3,
                indent: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Endereço", style: TextStyle(color: Colors.white ,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AlteredDataPag("Endereço","Rua Almirante da guerra perdida","address",home:"93",city: "Fortaleza",uf:"BR",complement: "Numero 81, Casa 17",)));
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Rua Almirante da guerra perdida, 93",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white, size: 22,),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                height: 10,
                thickness: 3,
                indent: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
