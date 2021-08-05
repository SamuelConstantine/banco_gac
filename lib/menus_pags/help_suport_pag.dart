import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class helpSuportPag extends StatefulWidget {
  @override
  _helpSuportPagState createState() => _helpSuportPagState();
}

class _helpSuportPagState extends State<helpSuportPag> {

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
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "Ajuda e Suporte",
            style: TextStyle(
              fontSize: 23,
              color: Theme.of(context).primaryColor,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black
      ),
      backgroundColor: Colors.black,
      body:  Stack(
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
                                          Text("Dúvidas frequentes",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 40),
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text("Como alterar dados do perfil ?",style: TextStyle(color: Colors.white,fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            color: Theme.of(context).primaryColor,
                                            height: 3,
                                            thickness: 2,
                                            indent: 0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20,),
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text("Como funciona o Alpha Card",style: TextStyle(color: Colors.white,fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            color: Theme.of(context).primaryColor,
                                            height: 3,
                                            thickness: 2,
                                            indent: 0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20,),
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text("Taxas e Limites",style: TextStyle(color: Colors.white,fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            color: Theme.of(context).primaryColor,
                                            height: 3,
                                            thickness: 2,
                                            indent: 0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20,),
                                            child: InkWell(
                                              onTap: (){

                                              },
                                              child: Text("Taxa do cartão",style: TextStyle(color: Colors.white,fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            color: Theme.of(context).primaryColor,
                                            height: 3,
                                            thickness: 2,
                                            indent: 0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                            Icon(Icons.check_circle,size: 100,color: Colors.white,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 20,bottom: 40),
                                              child: Text("Queremmos te ajudar,\n entre em contato com a\n nossa equipe agora mesmo!",
                                                style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 20,fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,),
                                            ),
                                          InkWell(
                                            onTap: (){

                                            },
                                            child: Container(
                                              width: 115,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.amber
                                                  )
                                                ),
                                                child: Center(child: Text("Entrar em contato",style: TextStyle(color: Colors.white),))),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
