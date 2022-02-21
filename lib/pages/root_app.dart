
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/json/json.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank/theme/colors.dart';
import 'account.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
//import 'package:fluttericon/font_awesome_icons.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:getAppBar(),
     body: SafeArea(
       child: getBody(),
     )
    );
  }
  
  getAppBar(){

    return AppBar(  
        elevation: 0,
        toolbarHeight: 160,
        backgroundColor: purple,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30,),
              child: Row(
                children: [
                   Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: white.withOpacity(0.2),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(onPressed: (){
                     
                    } , 
                    icon: const Icon(
                      FeatherIcons.user, 
                      size: 27,)),
                  )
                ],
              ),
            ),
             Text("Olá, Lucas", 
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
            ) )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 55),
            child: Row(
              children: [
                IconButton(
              onPressed: (){}, 
              icon: const Icon(FeatherIcons.eye)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(FeatherIcons.helpCircle)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(FeatherIcons.mail))
              ],
            ),
          )
          
        ],
    );
  }
  getBody(){
    List items = [
      Icons.flutter_dash,
      FontAwesomeIcons.barcode,
      Icons.arrow_downward,
      Icons.arrow_upward,
      FeatherIcons.heart,
      Icons.smartphone,
      FeatherIcons.dollarSign
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: prefer_const_constructors
                Text("Conta", 
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                  fontSize: 20,
                  color: black,
                  fontWeight: FontWeight.w600,
                ),
                )),
                IconButton(
                  onPressed: (){
                     Navigator.push(context, 
                      PageTransition(
                        child: Account(), 
                        type: PageTransitionType.rightToLeft, 
                        ));
                  }, 
                  icon: Icon(
                    FeatherIcons.arrowRight,
                    color: Colors.grey.withOpacity(0.8),
                    size: 20,
                  )),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "R\$ 12.365,34",
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                color: black,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ), 
              )  
              ),
          ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: (){} , 
                                icon: Icon(items[index], 
                                size: 22,
                                color: black, )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Text(
                                balls[index]['title'],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                  color: black,
                                )),
                              ),
                            ),
                        ],
                      ),
                    );
                  }),
                  
                ),
              ),
            ),
            const SizedBox(height: 30,),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 355,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: <Widget>[
                        IconButton(onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.creditCard, 
                        size: 18,)),
                         Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child:  Text(
                            "Meus Cartões", 
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                              fontWeight: FontWeight.w500
                            )
                            )  ,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 15,),
            const Divider(),
            
            
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                     const Icon(Icons.credit_card),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Cartão de Crédito", 
                      style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                          ),
                          ),
                          IconButton(onPressed: (){}, 
                          icon: Icon(
                            FeatherIcons.arrowRight,
                            size: 20,
                            color: Colors.grey.withOpacity(0.7),))
                        ],
                      ),
     
              ),
              Text("Fatura Atual", 
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
                ) ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child:  Text("R\$ 0,00", 
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                        color: black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600
                            ),
                        ) 
                            ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Limite disponível: R\$ 10.000,00", 
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.8),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )), 
                   ),
                ),
              ],
            ),
            ),
             const SizedBox(height: 15,),
            const Divider(),
            

          Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                     const Icon(Icons.attach_money)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Empréstimo", 
                      style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                          ),
                          ),
                          IconButton(onPressed: (){}, 
                          icon: Icon(
                            FeatherIcons.arrowRight,
                            size: 20,
                            color: Colors.grey.withOpacity(0.7),))
                        ],
                      ),
     
              ),
              Text("Começe a pagar em até 90 dias.", 
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
                ) ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Valor disponível de até: R\$ 12.000,00", 
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.9),
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  )), 
                   ),
                ),
              ],
            ),
            ),
            const SizedBox(height: 15,),
            const Divider(),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                         const Icon(FeatherIcons.barChart)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Investimentos", 
                          style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                              ),
                              ),
                              IconButton(onPressed: (){}, 
                              icon: Icon(
                                FeatherIcons.arrowRight,
                                size: 20,
                                color: Colors.grey.withOpacity(0.7),))
                            ],
                          ),
     
                  ),
                  Text("O jeito Nu de investir: sem asteristicos, linguagem fácil e a partir de R\$1. Saiba mais.", 
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                    ),
                    ) ),
                    
                  ],
                ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 355,
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      children: <Widget>[
                        IconButton(onPressed: (){}, 
                        icon: const Icon(
                          FontAwesomeIcons.rebel, 
                        size: 18,)),
                         Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child:  Text(
                            "Meu pedacinho da Rebelião", 
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                              fontWeight: FontWeight.w500
                            )
                            )  ,),
                        )
                      ],
                    ),
                  ),
                ],
              ),
                 Padding(
                   padding: const EdgeInsets.only(top: 8),
                   child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Container(
                      width: 355,
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(onPressed: (){}, 
                          icon: const Icon(
                            FontAwesomeIcons.empire, 
                          size: 18,)),
                           Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child:  Text(
                              "Créditos Imperiais", 
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                fontWeight: FontWeight.w500
                              )
                              )  ,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 140),
                            child: Text(
                                "2.000", 
                                style: GoogleFonts.roboto(
                                  textStyle:  const TextStyle(
                                    color: black,
                                  fontWeight: FontWeight.bold
                                )
                                )  ,),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
                 ),
              ],
            ),

            const SizedBox(height: 15,),
            const Divider(),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                     const Icon(FeatherIcons.heart)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Seguro de vida", 
                      style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                          ),
                          ),
                          IconButton(onPressed: (){}, 
                          icon: Icon(
                            FeatherIcons.arrowRight,
                            size: 20,
                            color: Colors.grey.withOpacity(0.7),)),
                        ],
                      ),
     
              ),
              Text("Conheça Nubank Vida: um seguro simples e que cabe no bolso.", 
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
                ) ),
                
              ],
            ),
            ),

            const SizedBox(height: 15,),
            const Divider(),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [  
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                     const Icon(FeatherIcons.shoppingBag)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Shopping", 
                      style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                          ),
                          ),
                          IconButton(onPressed: (){}, 
                          icon: Icon(
                            FeatherIcons.arrowRight,
                            size: 20,
                            color: Colors.grey.withOpacity(0.7),)),
                        ],
                      ),
     
              ),
              Text("Vantagens exclusivas das nossas marcas favoritas.", 
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.9),
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
                ) ),
              ],
            ),
            ),
           const SizedBox(height: 15),
           const Divider(),

           Padding(
             padding: const EdgeInsets.only(top: 15, left: 20, bottom: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text("Descubra mais", 
                  style: TextStyle(
                  color: black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                      ),
                    ),
             
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: List.generate(3, ((index) {
                   return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Container(
                             width: 230,
                             height: 260,
                             decoration: BoxDecoration(
          
                               color: Colors.grey.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(15)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Portabilidade salário",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600
                                  )
                                ),
                                ),
          
                                Text("Sua liberdade financeira começa com você escolhend...",
                                style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                    color: black.withOpacity(0.7),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                  )
                                ),
                                ),
          
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: GestureDetector(
                                    onTap: (){
                                      
                                    },
                                    child: Container(
                                      width: 100,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: purple,
                                        borderRadius: BorderRadius.circular(15),
                                        
                                      ),
                                      child: Center(child: 
                                      Text(imgs[index]['btt'], maxLines: 1, 
                                      style: TextStyle(
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600
                                      ),)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ),
                        ),
          
                        Container(
                          width: 230,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft:  Radius.circular(15), topRight: Radius.circular(15)),
                            image:  DecorationImage(
                              fit: BoxFit.cover,
                              image:  NetworkImage(imgs[index]['img']))
                          ),
                          ),
          
          
                        ],
                  );
                  }
                ),
                        )),
              ),
          ),
                ],
             ),
           ),
        ],
      ),
    );
  }
}