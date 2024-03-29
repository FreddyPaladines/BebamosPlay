import 'dart:math';
import 'package:bebemos/widgets/Datos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:provider/provider.dart';
import '../../screens/personaProvider/provider.dart';
import '../King/kingV3.dart';



class Juego_Botella extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
     final size= MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 46, 37),
        title: Text(listapersonaje.idioma==0?'La Botella':"A bottle"),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
          Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
        )
      ,
      body: Scaffold(
        body: Stack(
          children: [
            FondoInstrucciones(),
            
            if(listapersonaje.listapersonaje.length!=0)
                Column(children: [
                Container(height: size.height*0.03,),

                Text(listapersonaje.idioma==0?"Turno de:":"Turn",
                style: TextStyle(
                fontFamily: 'SyneMono',
                fontSize: 25,
                color: Color(0xFFD9A238)
              ),
                
                ),
                Text(listapersonaje.listapersonaje[listapersonaje.contador],
                style: TextStyle(
                fontFamily: 'SyneMono',
                fontSize: 30,
                color: Color(0xFFD9A238)
              ),
                
                )

            ],),
            CuerpoBotella(),
           

            ],),
      ),

      


    

    );
  }
}



class MensajeDesafio {
}

class CuerpoBotella extends StatefulWidget{







  @override
  
  _CuerpoBotellaState createState() => _CuerpoBotellaState();
}

class _CuerpoBotellaState extends State<CuerpoBotella> 
 with SingleTickerProviderStateMixin
{
  late AnimationController controller;


  late Animation<double> animation;

  int randomNum = 180;
  Random random = Random();
  bool mensajeMostrar = false;
  bool desafioMostrar = false;
  bool botongirar=true;
  


    



    
  

  @override
  
  void initState(){
    super.initState();
    controller = AnimationController (
      vsync: this,
      duration: Duration(seconds: 3),


      

      
    );

    controller.addListener(() {
      if (controller.value>0.99){
        controller.stop();

        setState(() {
            mensajeMostrar = true;
        });
      }
      else {
          setState(() {
            mensajeMostrar = false;
        });
      }
    });

    
    final angle = randomNum * pi /180;
    animation= Tween<double>(begin: 0, end: angle).animate(controller);
    
  }



  @override
  Widget build(BuildContext context) {
 final size= MediaQuery.of(context).size;
 List newjuegosBotella= shuffle(juegosBotella);
 final listapersonaje=Provider.of<ListProvider>(context);
    



    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(height:  size.height*0.12,),
              

              SizedBox(height:  size.height*0.1,),
              AnimatedBuilder(
                animation: animation, 
                builder: (context,child)=>     
                    Transform.rotate(
                      angle: animation.value,
                      child: Image.asset("assets/Juego_Botella.png",
                        height: 250,
                        width: 250,


                    ),
              ),


              ),


              SizedBox(height: size.height*0.1,),
              Visibility(
                visible: botongirar,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize:20,
                      fontWeight: FontWeight.w600,),
                    backgroundColor: Color(0xFFD9A238),
                    foregroundColor: Colors.black
                    
                  ),
                  onPressed: (){
                    controller.forward(from: 0);
                    setState(() {
                    randomNum=random.nextInt(44);
                    final angle = randomNum+31.416;
                    animation= Tween<double>(begin: 0, end: angle).animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
                    //mensajeMostrar= true;
              
              
              
              
              
                    });
                  }, 
                  child: Text(listapersonaje.idioma==0?"Girar":"Spin",
                  style:TextStyle(
                          fontFamily: 'SyneMono',
                        fontWeight: FontWeight.bold,
                          fontSize:20,
                          color: Colors.black,
                          ),
                  
                  )),
              ),
              SizedBox(height: 32,),
              Visibility(
                visible: mensajeMostrar,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize:20,
                    fontWeight: FontWeight.w600,),
                  backgroundColor: Color(0xFFD9A238),
                  foregroundColor: Colors.black
                  
                ),

                  onPressed: (){
                    setState(() {
                      botongirar=false;
                      mensajeMostrar=false;
                      
                    

                    desafioMostrar = true;});



                  }, 
                  child: Text(listapersonaje.idioma==0?"Mostrar desafio":"show challenge",
                  style:TextStyle(
                          fontFamily: 'SyneMono',
                        fontWeight: FontWeight.bold,
                          fontSize:20,
                          color: Colors.black,
                          ),
                  
                  )),
              ),





            ],
          ),
        ),

         Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Visibility(
          visible: desafioMostrar,

          child: Center(
            child: Container(

              height:size.height*0.6 ,
              width: size.width*0.8,
              decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/FondoPapel.png",),
        fit: BoxFit.fill,
        ),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                         ),            
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(width: size.width*0.65,),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          desafioMostrar=false;
                          mensajeMostrar = false;
                          botongirar=true;
                          if(listapersonaje.listapersonaje.length!=0) {
                        listapersonaje.addContador();
                        if (listapersonaje.contador>=listapersonaje.listapersonaje.length){
                          listapersonaje.ceroContador();
                        }}
                          
                          
                        });
                        
                      }, 
                      icon: Icon(Icons.close),
                      iconSize: 45,
                      color: Colors.black,
                      
                    
                    
                    )

                   ],),
                  Container(
                    height: size.height*0.28 ,
                    width: size.width*0.7,

                       child: Text(listapersonaje.idioma==0?newjuegosBotella.first.descripcion:newjuegosBotella.first.description,textAlign: TextAlign.center
                       //----------------
                        ,style:TextStyle(
                          fontFamily: 'SyneMono',
                        fontWeight: FontWeight.bold,
                          fontSize:23,
                          color: Colors.black,
                          ),
                       ),
                  ),
                  SizedBox(height: size.height*0.05,),
                  Container(      
                      height: size.height*0.10,
                      width: size.width*0.6,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(newjuegosBotella.first.imagen),
                      fit: BoxFit.fill,
        ),
        ),
                  )
                ],),

            ).animate().fadeIn(),
          ),
        ),
      ],
    )

      ],
    );

  }
}


class FondoInstrucciones extends StatelessWidget {
  const FondoInstrucciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/FondoMadera.png",),
        fit: BoxFit.fill,
        )
      ),


    );
  }
}