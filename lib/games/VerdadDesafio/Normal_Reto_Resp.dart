import 'dart:math';

import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';
import 'package:provider/provider.dart';
import '../../../screens/personaProvider/provider.dart';




// ignore: must_be_immutable
class NormalRetoResp extends StatefulWidget {

  @override
  State<NormalRetoResp> createState() => _NormalRetoRespState();
}

class _NormalRetoRespState extends State<NormalRetoResp> {
  final dataEnglish=[
    {"id": 0, "Description": "Upload one of your worst selfies to Facebook"},
     {"id": 1, "Description": "Post an embarrassing WhatsApp status"},
     {"id" : 2, "Description" : "Send a screenshot to your friends showing you confessing your love to a person of their choice"},
     {"id" : 3, "Description" : "Show the most embarrassing photo on your phone."},
     {"id" : 4, "Description" : "Show the last five people you texted and what the messages said."},
     {"id" : 5, "Description" : "Let the rest of the group DM someone on your Instagram account."},
     {"id" : 6, "Description" : "Eat a piece of raw garlic."},
     {"id" : 7, "Description" : "Do 100 squats."},
     {"id" : 8, "Description" : "Let the group see your Instagram DMs."},
     {"id" : 9, "Description" : "Show your time report on screen."},
     {"id" : 10, "Description" : "Hold three ice cubes in your mouth until they melt."},
     {"id" : 11, "Description" : "Say something dirty to the person on your left."},
     {"id" : 12, "Description" : "Give a foot massage to the person on your right."},
     {"id" : 13, "Description" : "Put 10 different liquids in a glass and drink it."},
     {"id": 14, "Description": "Shout the first word that comes to mind."},
     {"id": 15, "Description": "Make an erotic dance to the person you choose."},
     {"id": 16, "Description": "Repeat everything the person on your right says until it's your turn again"},
     {"id" : 17, "Description" : "Take off four items of clothing."},
     {"id" : 18, "Description" : "Like the first 15 posts on your Facebook."},
     {"id" : 19, "Description" : "Eat a spoonful of mustard."},
     {"id" : 20, "Description" : "Keep your eyes closed until it's your turn again."},
     {"id" : 21, "Description" : "Try to put all the toes of one foot in the mouth."},
     {"id" : 22, "Description" : "Send a 'sext' to the last person in your phonebook."},
     {"id" : 23, "Description" : "Show your orgasm face."},
     {"id" : 24, "Description" : "Empty your wallet/purse and show everyone what's inside."},
     {"id" : 25, "Description" : "Do your best 'sexy crawl'."},
     {"id" : 26, "Description" : "Pretend to be the person on your right for 10 minutes."},
     {"id" : 27, "Description" : "Eat a sandwich without using your hands."},
     {"id" : 28, "Description" : "Whisper a secret to the person on your left."},
     {"id" : 29, "Description" : "Twerk for one minute."},
     {"id" : 30, "Description" : "Try to make the group laugh as quickly as possible."},
     {"id" : 31, "Description" : "Try to put your whole fist in your mouth."},
     {"id" : 32, "Description" : "Let someone else in the group touch up your makeup."},
     {"id" : 33, "Description" : "Tell everyone an embarrassing story about yourself."},
     {"id" : 34, "Description" : "Try licking your elbow."},
     {"id" : 35, "Description" : "Peeling a banana with your toes."},
     {"id" : 36, "Description" : "Say everything in a whisper for the next 10 minutes."},
     {"id" : 37, "Description" : "Smell another player's armpit."},
     {"id" : 38, "Description" : "Speak with an American accent for the rest of the night."},
     {"id" : 39, "Description" : "Post the oldest 'selfie' from your phone to Instagram Stories."},
     {"id" : 40, "Description" : "Tell the saddest story you know."},
     {"id" : 41, "Description" : "Howl like a wolf for 30 seconds."},
     {"id": 42, "Description": "Dance without music for 30 seconds"},
     {"id" : 43, "Description" : "Do 'pole dance' with an imaginary bar."},
     {"id" : 44, "Description" : "Let someone else tickle you and try not to laugh."},
     {"id" : 45, "Description" : "Put as many snacks in your mouth as you can at once."},
     {"id" : 46, "Description" : "Scroll through your phonebook until someone tells you to stop. You have to call or delete that person."},
     {"id" : 47, "Description" : "Put your clothes inside out for two of your turns."},
     {"id": 48, "Description": "Finish your drink (responsibly)."},
     {"id" : 49, "Description" : "Try crying in front of the group."},
     {"id" : 50, "Description" : "Tell the group two truths and one lie, and they have to guess which one is the lie."},
     {"id" : 51, "Description" : "Show your secret talent."},
     {"id": 52, "Description": "Try to impersonate everyone in the room."},
     {"id": 53, "Description": "Respond to the first five Instagram stories on your timeline."},
     {"id" : 54, "Description" : "Put on all possible layers in 60 seconds."},
     {"id" : 55, "Description" : "Make another player jump in the next 10 minutes."},
     {"id" : 56, "Description" : "Hold your drink with both hands for the rest of the night."},
     {"id" : 57, "Description" : "Sit on the floor for the rest of the night."},
     {"id" : 58, "Description" : "Make up without a mirror and leave it like that for the rest of the game."},
     {"id": 59, "Description": "Custom insult to everyone present."},
     {"id": 60, "Description": "Say Im gay."},
     {"id": 61, "Description": "Create an absurd story where you are the hero, and a unicorn asks you for fashion advice."},
     {"id": 62, "Description": "Mimic your favorite movie character for 1 minute, including the voice and gestures."},
{"id": 63, "Description": "Craft an improvised rap about everyday objects around you."},
{"id": 64, "Description": "Invent a funny choreography and perform it to the rhythm of a song of your choice."},
{"id": 65, "Description": "Speak for 2 minutes without using the letter 'A' in any word."},
{"id": 66, "Description": "Perform a dramatic interpretation of any comical situation."},
{"id": 67, "Description": "Create an acrostic with your name using extravagant adjectives."},
{"id": 68, "Description": "Tell a joke involving three animals that makes everyone laugh."},
{"id": 69, "Description": "Mimic a famous chef while explaining how to prepare a gourmet ice cream sandwich."},
{"id": 70, "Description": "Compose an improvised song about a randomly chosen object in the room."},
{"id": 71, "Description": "Create a unique cocktail using surprising ingredients and give it an extravagant name."},
{"id": 72, "Description": "Quick! Everyone touch something red."},
{"id": 73, "Description": "Create a playlist of songs that represent your relationship. Share it with your friends afterwards."},
{"id": 74, "Description": "If you have ice, put it on your back."},
{"id": 75, "Description": "Make a collaborative drawing or painting, with each person adding something to the artwork."},
{"id": 76, "Description": "Take a group photo and post it on social media claiming you are the best."},
{"id": 77, "Description": "Write a short story together, with each person contributing a paragraph."},
{"id": 78, "Description": "Call the person to your right 'cuckold'."},
{"id": 79, "Description": "You can only eat what others serve you with a spoon."},
{"id": 80, "Description": "Conduct a treasure hunt at home with clues and rewards at the end."},
{"id": 81, "Description": "Imitate a cartoon character in a comical way."},
{"id": 82, "Description": "Sing a song of your choice using a completely different voice."},
{"id": 83, "Description": "Build a tower of cups with cards and knock it down by throwing a sock from a short distance."},
{"id": 84, "Description": "Recite the alphabet backwards in less than 20 seconds."},
{"id": 85, "Description": "Perform a regional dance."},
{"id": 86, "Description": "Balance a book on your head and walk around the room without letting it fall."},
{"id": 87, "Description": "Perform a simple acrobatic move, like a somersault or a cartwheel, if it's safe to do so in your space."},
{"id": 88, "Description": "Juggle with three objects you find at home for at least 1 minute."},
{"id": 89, "Description": "Pick up five random objects and create a short story involving all of them."},
{"id": 90, "Description": "Try to make a funny face and maintain that expression for 1 minute."},
{"id": 91, "Description": "Add spice to any drink."},
{"id": 92, "Description": "Imitate the sound of three animals and challenge others to guess what they are."},
{"id": 93, "Description": "Recite a tongue twister as fast as possible without making mistakes."},
{"id": 94, "Description": "Speak in another language for two minutes."},
{"id": 95, "Description": "Create an abstract art sculpture using everyday objects."},
{"id": 96, "Description": "Dramatically interpret your favorite song."},
{"id": 97, "Description": "Take a photoshoot with a common object and post it on social media."},
{"id": 98, "Description": "Invent a unique greeting and present it to the group for 1 minute."},
{"id": 99, "Description": "Write a message to your high school sweetheart."},
{"id": 100, "Description": "Take your drink; you can't use your hands."}

  ];

  final data = [
    {"id" : 0, "Descripcion" : "Subir a Facebook una de tus peores selfies"},
    {"id" : 1, "Descripcion" : "Publicar un estado de WhatsApp vergonzoso"},
    {"id" : 2, "Descripcion" : "Mandar una captura de pantalla a tus amigos en la que se vea que le confiesas tu amor a una persona de su elección"},
    {"id" : 3, "Descripcion" : "Enseñar la foto más embarazosa de tu teléfono."},
    {"id" : 4, "Descripcion" : "Enseñar las últimas cinco personas a las que enviaste mensajes de texto y lo que decían los mensajes."},
    {"id" : 5, "Descripcion" : "Dejar que el resto del grupo envíe un MD a alguien de tu cuenta de Instagram."},
    {"id" : 6, "Descripcion" : "Comer un trozo de ajo crudo."},
    {"id" : 7, "Descripcion" : "Hacer 100 sentadillas."},
    {"id" : 8, "Descripcion" : "Dejar que el grupo mire tus MDs de Instagram."},
    {"id" : 9, "Descripcion" : "Enseñar tu informe de tiempo en pantalla."},
    {"id" : 10, "Descripcion" : "Mantener tres cubitos de hielo en la boca hasta que se derritan."},
    {"id" : 11, "Descripcion" : "Decir algo sucio a la persona de tu izquierda."},
    {"id" : 12, "Descripcion" : "Dar un masaje en los pies a la persona de tu derecha."},
    {"id" : 13, "Descripcion" : "Poner 10 líquidos diferentes en un vaso y beberlo."},
    {"id" : 14, "Descripcion" : "Gritar la primera palabra que se te ocurra."},
    {"id" : 15, "Descripcion" : "Hacer un baile erótico a la persona que elijas."},
    {"id" : 16, "Descripcion" : "Repetir todo lo que dice la persona de tu derecha hasta que sea tu turno de nuevo"},
    {"id" : 17, "Descripcion" : "Quitarte cuatro prendas de ropa."},
    {"id" : 18, "Descripcion" : "Dar me gusta a las 15 primeras publicaciones de tu Facebook."},
    {"id" : 19, "Descripcion" : "Comer una cucharada de mostaza."},
    {"id" : 20, "Descripcion" : "Mantener los ojos cerrados hasta que sea tu turno de nuevo."},
    {"id" : 21, "Descripcion" : "Intentar meter todos los dedos de un pie en la boca."},
    {"id" : 22, "Descripcion" : "Enviar un 'sext' a la última persona de tu agenda telefónica."},
    {"id" : 23, "Descripcion" : "Mostrar tu cara de orgasmo."},
    {"id" : 24, "Descripcion" : "Comer un plátano de forma seductora."},
    {"id" : 25, "Descripcion" : "Vaciar tu cartera/monedero y enseñar a todos lo que hay dentro."},
    {"id" : 26, "Descripcion" : "Hacer tu mejor 'gateo sexy'."},
    {"id" : 27, "Descripcion" : "Fingir ser la persona de tu derecha durante 10 minutos."},
    {"id" : 28, "Descripcion" : "Comer un bocadillo sin usar las manos."},
    {"id" : 29, "Descripcion" : "Susurrar un secreto a la persona de tu izquierda."},
    {"id" : 30, "Descripcion" : "Hacer 'twerking' durante un minuto."},
    {"id" : 31, "Descripcion" : "Intentar hacer reír al grupo lo más rápido posible."},
    {"id" : 32, "Descripcion" : "Intentar meter todo el puño en la boca."},
    {"id" : 33, "Descripcion" : "Dejar que otra persona del grupo te retoque el maquillaje."},
    {"id" : 34, "Descripcion" : "Contar a todos una historia embarazosa sobre ti mismo."},
    {"id" : 35, "Descripcion" : "Intentar lamerte el codo."},
    {"id" : 36, "Descripcion" : "Pelar un plátano con los dedos de los pies."},
    {"id" : 37, "Descripcion" : "Decir todo en un susurro durante los próximos 10 minutos."},
    {"id" : 38, "Descripcion" : "Oler la axila de otro jugador."},
    {"id" : 39, "Descripcion" : "Hablar con acento americano durante el resto de la noche."},
    {"id" : 40, "Descripcion" : "Publicar el 'selfie' más antiguo de tu teléfono en Instagram Stories."},
    {"id" : 41, "Descripcion" : "Contar la historia más triste que conozcas."},
    {"id" : 42, "Descripcion" : "Aullar como un lobo durante 30 segundos."},
    {"id" : 43, "Descripcion" : "Bailar sin música durante 30 segundos"},
    {"id" : 44, "Descripcion" : "Hacer 'pole dance' con una barra imaginaria."},
    {"id" : 45, "Descripcion" : "Dejar que otra persona te haga cosquillas e intentar no reírte."},
    {"id" : 46, "Descripcion" : "Meter en la boca todos los bocadillos que puedas a la vez."},
    {"id" : 47, "Descripcion" : "Desplazarte por tu agenda telefónica hasta que alguien te diga que pares. Tienes que llamar o borrar a esa persona."},
    {"id" : 48, "Descripcion" : "Ponerte la ropa al revés durante dos turnos tuyos."},
    {"id" : 49, "Descripcion" : "Acabarte la bebida (responsablemente)."},
    {"id" : 50, "Descripcion" : "Intentar llorar delante del grupo."},
    {"id" : 51, "Descripcion" : "Decir al grupo dos verdades y una mentira, y ellos tienen que adivinar cuál es la mentira."},
    {"id" : 52, "Descripcion" : "Mostrar tu talento secreto."},
    {"id" : 53, "Descripcion" : "Intentar suplantar a todos los presentes en la sala."},
    {"id" : 54, "Descripcion" : "Responder a las cinco primeras 'stories' de Instagram de tu 'timeline'."},
    {"id" : 55, "Descripcion" : "Ponerte todas las capas posibles en 60 segundos."},
    {"id" : 56, "Descripcion" : "Hacer saltar a otro jugador en los próximos 10 minutos."},
    {"id" : 57, "Descripcion" : "Sostener tu bebida con las dos manos durante el resto de la noche."},
    {"id" : 58, "Descripcion" : "Sentarte en el suelo durante el resto de la noche."},
    {"id" : 59, "Descripcion" : "Maquillarte sin espejo y dejarte así durante el resto del juego."},
    {"id" : 60, "Descripcion" : "Insultar de forma personalizada a todos los presentes."},
    {"id": 61, "Descripcion": "Crear una historia absurda en la que eres el héroe y un unicornio te pide consejos de moda."},
{"id": 62, "Descripcion": "Imitar a tu personaje favorito de película durante 1 minuto, incluyendo la voz y gestos."},
{"id": 63, "Descripcion": "Elaborar un rap improvisado sobre objetos cotidianos a tu alrededor."},
{"id": 64, "Descripcion": "Inventar una coreografía divertida y realizarla al ritmo de una canción a elección."},
{"id": 65, "Descripcion": "Hablar durante 2 minutos sin utilizar la letra 'A' en ninguna palabra."},
{"id": 66, "Descripcion": "Realizar una interpretación dramática de una situación cómica cualquiera."},
{"id": 67, "Descripcion": "Crear un acróstico con tu nombre utilizando adjetivos extravagantes."},
{"id": 68, "Descripcion": "Contar un chiste que involucre a tres animales y haga reír a todos los presentes."},
{"id": 69, "Descripcion": "Imitar a un famoso chef mientras explicas cómo preparar un sándwich de helado gourmet."},

{"id": 70, "Descripcion": "Componer una canción improvisada sobre un objeto al azar que alguien elija en la habitación."},
{"id": 71, "Descripcion": "Crea un cóctel único usando ingredientes sorprendentes y dale un nombre extravagante."},
{"id": 72, "Descripcion": "¡Rapido!, todos toquen algo de color rojo"},
{"id": 73, "Descripcion": "Elaboren juntos una lista de reproducción de canciones que representen su relación. Compartele luego con tus amigos"},
{"id": 74, "Descripcion": "Si tienen hielo, ponte en la espalda"},
{"id": 75, "Descripcion": "Hagan un dibujo o pintura colaborativa, cada uno añadiendo algo a la obra de arte."},
{"id": 76, "Descripcion": "Toma foto del grupo, y subelo en las redes sociales diciendo que son los mejores"},
{"id": 77, "Descripcion": "Escriban juntos una historia corta, cada uno contribuyendo con un párrafo."},
{"id": 78, "Descripcion": "Dile cachudo/a al de la derecha"},
{"id": 79, "Descripcion": "Solo puedes tomar con cuchara lo que te sirvan"},
{"id": 80, "Descripcion": "Realiza una búsqueda del tesoro en casa con pistas y premios al final."},
{"id": 81, "Descripcion": "Realiza una imitación cómica de tu personaje favorito de dibujos animados."},
{"id": 82, "Descripcion": "Canta una canción de tu elección usando una voz completamente diferente."},
{"id": 83, "Descripcion": "Haz una torre de vasos con cartas y derribala lanzando un calcetín desde una distancia corta."},
{"id": 84, "Descripcion": "Recita el abecedario al revés en menos de 20 segundos."},
{"id": 85, "Descripcion": "Realiza una danza regional"},
{"id": 86, "Descripcion": "Balancea un libro en tu cabeza y camina por la habitación sin dejar que se caiga."},
{"id": 87, "Descripcion": "Realiza una acrobacia simple, como una voltereta o una rueda, si es seguro hacerlo en tu espacio."},
{"id": 88, "Descripcion": "Haz malabares con tres objetos que encuentres en casa durante al menos 1 minuto."},
{"id": 89, "Descripcion": "Recoge cinco objetos al azar y crea una historia corta que los involucre a todos."},
{"id": 90, "Descripcion": "Intenta hacer una cara graciosa y mantén esa expresión durante 1 minuto."},
{"id": 91, "Descripcion": "Ponle picante a cualquier bebida."},
{"id": 92, "Descripcion": "Imita el sonido de tres animales y desafía a otros a adivinar cuáles son."},
{"id": 93, "Descripcion": "Recita un trabalenguas lo más rápido posible sin cometer errores."},
{"id": 94, "Descripcion": "Habla en otro idioma por dos mionutos"},
{"id": 95, "Descripcion": "Crea una escultura de arte abstracto utilizando objetos cotidianos."},
{"id": 96, "Descripcion": "Realiza una interpretación dramática de tu canción favorita."},
{"id": 97, "Descripcion": "Haz una sesión de fotos con un objeto cotidiano y subela a las redes sociuales"},
{"id": 98, "Descripcion": "Inventa un saludo único y preséntalo al grupo durante 1 minuto."},
{"id": 99, "Descripcion": "Escribele a tu amor de colegio."},
{"id": 100, "Descripcion": "Toma tu bebida, No puedes usar las manos"}

  ];

  Object? cuerpotexto = "";

  Object? cuerpotextoIngles = "";

  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);
    int tamanolista = data.length;
    
    

    var intValue = Random().nextInt(tamanolista);
    
    cuerpotexto=data[intValue]["Descripcion"];
    cuerpotextoIngles=dataEnglish[intValue]["Description"];
    



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(listapersonaje.idioma==0?'¿Verdad o reto?':'Truth or dare?'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
      ),
      body: Scaffold(
        body: Stack(
          children: [
            
            BackgroundgeneralInstru(
              colorfondo: Color(0xff28A5B6), 
              imagen1: 'assets/Instrucciones_Verdad2.png', 
              imagen2: 'assets/Instrucciones_Verdad3.png',),
            Center(
              child: GestureDetector(
                onTap: () {
                        if(listapersonaje.listapersonaje.length!=0) {
                          listapersonaje.addContador();
                          if (listapersonaje.contador>=listapersonaje.listapersonaje.length){
                            listapersonaje.ceroContador();
                          }}
                        
                        
                        
                        Navigator.pop(context);},
                
                child: CuadroTexto()),
            ),
            Center(child: BotonVerdad()),
            Center(child: _TextoEnPantalla(textoValor: listapersonaje.idioma==0?"$cuerpotexto":"$cuerpotextoIngles")),



            
            ],),
      ),
    );
}
}

class _TextoEnPantalla extends StatefulWidget{
  final String textoValor;
  
const _TextoEnPantalla({
    Key? key, 
    required this.textoValor, 

  }) : super(key: key);

  @override
  State<_TextoEnPantalla> createState() => _TextoEnPantallaState();
}

class _TextoEnPantallaState extends State<_TextoEnPantalla> {
  @override
  Widget build(BuildContext context) {
   final size= MediaQuery.of(context).size;
   final listapersonaje=Provider.of<ListProvider>(context);

    return Column(
       children: [
        SizedBox(height: size.height*0.3,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 300,
            width: 450,
            

            child: AspectRatio(
              aspectRatio: 0.83,
              child: Stack(
              
              
              children: [
                Text("${widget.textoValor}",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 30,
                    color: Colors.white,
                    height: 1,
                  ),
                  ),
                  GestureDetector(
                  onTap: () {
                      if(listapersonaje.listapersonaje.length!=0) {
                        listapersonaje.addContador();
                        if (listapersonaje.contador>=listapersonaje.listapersonaje.length){
                          listapersonaje.ceroContador();
                        }}
                      
                      
                      
                      Navigator.pop(context);},
                  ),
                Column( children: [

                  Container(height: 250,),
                  Text(listapersonaje.idioma==0?"Siguiente":"Next",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: Colors.white,
                    height: 1,
                  ),
                  ),
                ],

                )
              
              
              ],
            ),
            )
            
              

            
            
            )
        )



        ]


    );


  }
}

class CuadroTexto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height*0.2,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width:500,
            height:400,
            
            


                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]

                  

                  
                )
                ,),

              
              

              
              
              
              )
        
        
        

        


      ],





    );
  }
  





}

class BotonVerdad extends StatefulWidget{
  @override
  State<BotonVerdad> createState() => _BotonVerdadState();
}

class _BotonVerdadState extends State<BotonVerdad> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    final listapersonaje=Provider.of<ListProvider>(context);
    return Column(
      children: [
        SizedBox(height: size.height*0.045,),
        Padding(
          padding: const EdgeInsets.all(100.0),

          child: SizedBox(
                    width: 300,
            height: 80,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [
                  

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),


                  ),
                Hero(
                    tag: 2, 
                    child: ClipRRect(

                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage(listapersonaje.idioma==0?"assets/Desafio.jpg":"assets/Dare.png"), 
                      placeholder: AssetImage("assets/loading.gif"),),
                  
                  
                  )
                    
                    
                    
                    
                    ),

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );


  }
}