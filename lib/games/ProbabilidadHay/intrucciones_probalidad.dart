
import 'package:bebemos/games/ProbabilidadHay/probabilidad_juego.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../screens/personaProvider/provider.dart';

class InstruccionesProbabilidad extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(listapersonaje.idioma==0?'Probabilidad':"How likely"),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.keyboard_return))
        ],
        )
      ,
        body: Stack(
          children: [
            FondoInstrucciones(),
            CuerpoMeme(),


            ],),
      ),

      


    

    );
  }
}

class CuerpoMeme extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);
     final size= MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Center(
          child: Container(
              height:size.height*0.7,
              width: size.width*0.85,
              decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
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
                        
              child: GestureDetector(
                onTap: (){
                  if(listapersonaje.list.length >1){
                    Navigator.pushNamed(context,"Barquitojuego" );
                  } else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(listapersonaje.idioma==0?'Para jugar necesitas agregar al menos dos jugador':"To play you need to add at least two players",style: TextStyle(color: Colors.black87),),
                            duration: const Duration(seconds: 10),
                            action: SnackBarAction(
                              label: listapersonaje.idioma==0?"Volver a seleccionar":"Reselect", 
                              onPressed: (){
                              Navigator.pushNamed(context,"Persona");
                              }),
                            
                          ));
                  }

                  } ,
                child: Column(
      children: [
        SizedBox(height:size.height*0.009),
        Padding(
          padding: EdgeInsets.all(12),
          child: Text (listapersonaje.idioma==0?"INSTRUCCIONES":"INSTRUCTIONS", 
          style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
          ),

        
        
          )
          
          
          ),
        Padding(
        padding: EdgeInsets.all(10),
        child: Text (listapersonaje.idioma==0?"Cada jugador es elegido al azar y tendra que hacer un reto con el jugador que salga en el texto":"Each player is chosen randomly and will have to do a challenge with the player that appears in the text", 
          style: TextStyle(
                color: Colors.black,
                fontSize:20,
                fontWeight: FontWeight.w600,
          ),             
          )
        ),
        SizedBox(height:size.height*0.05),

        Container(
          child: Image.asset(
                "assets/Instrucciones_Probabilidad3.gif",
                fit: BoxFit.cover,
                height:size.height*0.28,
                width:size.width*0.55,
              ),
        ),



        SizedBox(height:size.height*0.03),

            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                



                   
/*                       onPressed: (){
                    Navigator.pushNamed(context,"MenuJuegos" );
                  },              */





                ElevatedButton(
                  
                  
                  child: Text(listapersonaje.idioma==0?"Comenzar":"Play",style: TextStyle(
                        color: Colors.black,
                        fontSize:20,
                        fontWeight: FontWeight.w600,)),
                  onPressed: (){
                    if(listapersonaje.list.length >1){
                    Navigator.pushNamed(context,"JuegoProbabilidad" );
                  } else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white,
                            content: Text(listapersonaje.idioma==0?'Para jugar necesitas agregar al menos dos jugador':"you need to add at least two players",style: TextStyle(color: Colors.black87),),
                            duration: const Duration(seconds: 10),
                            action: SnackBarAction(
                              label: listapersonaje.idioma==0?"Volver a seleccionar":"Reselect", 
                              onPressed: (){
                              Navigator.pushNamed(context,"Persona");
                              }),
                            
                          ));
                  }
                  }, 
                   style: ElevatedButton.styleFrom(
                   backgroundColor: Color.fromARGB(255, 150, 82, 218),
                   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                   textStyle: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold),
                   shadowColor: Colors.black ),
                   ),




              ],
          ),
            ),



      ],
//ok



    ),
              )
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}

