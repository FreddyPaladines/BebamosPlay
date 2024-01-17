import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../screens/personaProvider/provider.dart';

class ProbabilidadJuego extends StatefulWidget {
  const ProbabilidadJuego({Key? key}) : super(key: key);

  @override
  State<ProbabilidadJuego> createState() => _ProbabilidadJuegoState();
}

class _ProbabilidadJuegoState extends State<ProbabilidadJuego> {
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
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "MenuJuegos");
                },
                icon: Icon(Icons.videogame_asset))
          ],
        ),
        body: Stack(
          children: [
            FondoInstrucciones(),
            SpinWheel(),
            

          ],
        ),
      ),
    );
  }
}

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  String rewards = "0";
  bool desafioMostrar = false;
  bool mensajeMostrar = false;
  String nombre="Aleatorio";

  List<String> items = [

  ];

  List textoDesafio(String nombre, List segNombre){
    List newlist=[];
    newlist = List.from(segNombre);
    newlist.remove(nombre);
    newlist.shuffle();
    List cant=[0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,49,50,51,52,53,54,55,56,57,58,59,60,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83]
;
    List<String> desafios = [
     "$nombre has una posición sexual",
    "$nombre cuenta una historia vergonzosa de alguien de los presentes",
    "$nombre cuéntanos tu primera vez",
    "Tomen todos los que no cumplen en el mismo mes que $nombre",
    "$nombre toman los del sexo contrario a ti",
    "${newlist[0]} adivina la película favorita de $nombre si no toma",
    "$nombre juega pidra papel o tijera con ${newlist[0]} el que pierde toma",
    "$nombre creo que ${newlist[0]} tiene sed, dale un shot",
    "$nombre toma tu pareja o tu casi algo, si no tomas por soltero/a",
    "Duelo de miradas entre $nombre y ${newlist[0]}, el que pestañe pierde",
    "$nombre escribe en el buscador de WhatsApp de ${newlist[0]} una palabra,${newlist[0]} tiene que mostrar los resultado, si no toma",
    "$nombre eres inmune a tomar por una ronda, tu elijes quien toma por ti",
    "$nombre elijes la música ahora, si no te dejan toman todos",
    "$nombre toman todos los que consideres que eran del otro equipo",
    "Toman todos los que tienen más seguidores en Instagram que $nombre",
    "$nombre Escribe una palabra en el estado de Instagram de ${newlist[0]} toma un shot si no se deja",
    "$nombre dale de tomar a ${newlist[0]} sin usar las manos",
    "$nombre manda un emoji a tu jefe, si no toma",
    "$nombre Demuestra un talento oculto que tengas.",
    "¡Rápido $nombre eres una vaca, muge!",
    "cuéntanos tu opinión $nombre, que significa para ti, ser bueno en la cama.",
    "$nombre escríbele a tu ex, si no toma dos shots",
    "$nombre comparte una mentira que hayas dicho que se salió de control.",
    "$nombre escribe una mímica que ${newlist[0]} hará después",
    "$nombre dile que es hermosa a ${newlist[0]}",
    "$nombre azota a ${newlist[0]}, si alguien se niega toma",
    "$nombre dale 5 vueltas a ${newlist[0]}",
    "$nombre Perrea, ${newlist[0]} ponle la musica con la que perrearas",
    "$nombre juega toda una ronda agarrado/a de la mano de ${newlist[0]}",
    "$nombre juega toda una ronda agarrado/a de la botella",
    "$nombre si tienes un preservativo regálale a ${newlist[0]} puede que tenga suerte",
    "$nombre crees que ${newlist[0]} tenga talento para ser actor/actriz porno?",
    "$nombre adivina el color de ropa interior de ${newlist[0]}",
    "$nombre pon una canción que tú y ${newlist[0]} se sepan, y canteen al grupo",
    "Nadie le puede hablar a $nombre por una ronda el que lo hace toma",
    "$nombre hazle un oral a una botella, ${newlist[0]} califica si lo hiciste bien",
    "$nombre hazle un oral a una fruta, ${newlist[0]} califica si lo hiciste bien",
    "$nombre intercambia una prenda con ${newlist[0]}",
    "Háblanos de tu ultima ruptura amorosa $nombre, si no tienes toma dos shots",
    "Todos los de la mesa tienen que nombrar a $nombre como MI AMOR, si se equivocan toma",
    "$nombre nombra 5 cosas que harías con un pene",
    "$nombre carga en peso a ${newlist[0]} si no puede, toma. y si esa persona te carga a ti, tomas el doble",
    "${newlist[0]} tiene que adivinar el superhéroe de $nombre, tiene tres intentos",
    "$nombre juega con los ojos cerrados durante una ronda",
    "Los mayores de edad que $nombre tienen que tomar",
    "Los menores de edad que $nombre tienen que tomar",
    "Pelea de pulgares entre $nombre y ${newlist[0]} el que pierde toma",
    "Todo los de la mesa tienen que adivinar el videojuego favorito de $nombre",
    "$nombre baila la canción que está sonando, puede acompañarte ${newlist[0]}",
    "$nombre dale el trago que tienes a ${newlist[0]}",
    "$nombre no puede hablar durante dos rondas",
    "Toman todos los que han llevado a $nombre borracho",
    "$nombre Cambia de ropa con ${newlist[0]}",
    "$nombre piensa un numero del 1 al 3, todos tendran que adivinar el número, el que falle bebe",
    "$nombre camina como pingüino",
    "Duelo de miradas entre $nombre vs ${newlist[0]} el que pestañe pierde",
    "$nombre declarate a una persona que te gusta",
    "$nombre con cuantas personas te has acostado, si es mas que ${newlist[0]}, tomas",
    "$nombre si has copiado en un examen bebe",
    "$nombre enseña al grupo tu ultima foto y explicala",
    "$nombre señala quien va a tomar",
    "$nombre confiensale algo que tienes guardado a ${newlist[0]}",
    "Eres muy agradecido $nombre asi que tomas con el dueño de la casa, que te invito",
    "$nombre tomas con el que crees que es mas bonita/o",
    "$nombre tomas con el que crees que es mas fea/o",
    "Toman todos los que han viajado a los mismo paises que $nombre ",
    "Los que tengan el mismo color de ropa interio de $nombre toman",
    "$nombre toda oracion que digas tiene que terminar en Pene",
    "$nombre di con quien cogerias, matarias y con quien te casarías del grupo, tienen que ser diferente personas",
    "$nombre foto con los sobrios",
    "$nombre foto con los ebrios",
    "Toman los que no sean nacidos en la misma ciudad que $nombre",
    "$nombre adivina el nombre de la mascota de ${newlist[0]}",
    "$nombre escribe en tu red social 'Shot por cada reacción que me hagan', tomas por cada reacción",
    "$nombre termina las oraciones que empieza ${newlist[0]} por una ronda, si fallas toman los dos",
    "Las personas que comienzan con la misma letra que $nombre toman",
    "Desafio en grupo, adivinen el país que quisiera viajar $nombre",
    "Haz una pose graciosa $nombre, los demas tiene que agregar una posee nueva, hasta que pase por todo el grupo",
    "Todos lo que tengan MENOS bateria que $nombre, toman",
    "$nombre pon en tus redes sociales que ${newlist[0]} esta soltera y disponible, cada que comenta una persona toma ${newlist[0]}",
    "Todos los de un color de piel mas claro que $nombre toman",
    "$nombre elige el animal que debe imitar ${newlist[0]}",
    "$nombre solo puedes usar el baño con la puerta abierta",
    "$nombre permanece vendado por dos rondas, no riegues el vaso",
  ];
  List<String> challenges = [
     "$nombre do a sexual position",
     "$nombre tells an embarrassing story about someone here",
     "$nombre tell us about your first time",
     "Take everyone who doesn't meet in the same month as $nombre",
     "$nombre is taken by those of the opposite sex from you",
     "${newlist[0]} guess $nombre's favorite movie if he doesn't take",
     "$nombre plays rock paper scissors with ${newlist[0]} loser takes",
     "$nombre I think ${newlist[0]} is thirsty, give it a shot",
     "$nombre take your partner or you almost something, if you don't take single",
     "Glance duel between $nombre and ${newlist[0]}, whoever blinks loses",
     "$nombre writes in the WhatsApp search engine ${newlist[0]} a word, ${newlist[0]} has to show the results, if it doesn't take",
     "$nombre are immune to taking for a round, you choose who takes for you",
     "$nombre choose the music now, if they don't let you they all take",
     "$nombre take as many as you think were from the other team",
     "Take everyone who has more followers on Instagram than $nombre",
     "$nombre Type a word on ${newlist[0]}'s Instagram status, take a shot if it's not allowed",
     "$nombre grab ${newlist[0]} hands free",
     "$nombre send an emoji to your boss, if he doesn't take",
     "$nombre Show off a hidden talent you have.",
     "Quick $nombre you're a cow, moo!",
     "tell us your opinion $nombre, what it means to you, being good in bed.",
     "$nombre text your ex, if he doesn't take two shots",
     "$nombre share a lie you told that got out of hand.",
     "$nombre writes a mime that ${newlist[0]} will do later",
     "$nombre tell ${newlist[0]} that she is beautiful",
     "$nombre flog ${newlist[0]}, if anyone refuses flog",
     "$nombre spin it 5 times ${newlist[0]}",
     "$nombre Perrea, ${newlist[0]} put the music with which you will perrearas",
     "$nombre plays a whole round holding hands with ${newlist[0]}",
     "$nombre plays a whole round holding the bottle",
     "$nombre if you have a condom give it to ${newlist[0]} he might get lucky",
     "$nombre do you think ${newlist[0]} has the talent to be a porn actor/actress?",
     "$nombre guesses the inner break color of ${newlist[0]}",
     "$nombre play a song that you and ${newlist[0]} know about, and sing along to the group",
     "No one can talk to $nombre for a round whoever does it takes",
     "$nombre oral a bottle, ${newlist[0]} caliph if you did it right",
     "$nombre oral a fruit, ${newlist[0]} caliph if you did it right",
     "$nombre exchanges a piece of clothing with ${newlist[0]}",
     "Tell us about your last love breakup $nombre, if you don't have two shots",
     "Everyone at the table has to name $nombre as MY LOVE, if they make a mistake take it",
     "$nombre name 5 things you would do with a penis",
     "$nombre loads ${newlist[0]} if he can't, take. and if that person loads you, take double",
     "${newlist[0]} has to guess $nombre's superhero, he has three guesses",
     "$nombre plays with their eyes closed for a round",
     "Those of legal age that $nombre have to take",
     "The minors that $nombre have to take",
     "Thumb wrestle between $nombre and ${newlist[0]} loser takes",
     "Everyone at the table has to guess $nombre's favorite video game",
     "$nombre dance to the song that is playing, ${newlist[0]} can join you",
     "$nombre give the drink he has to ${newlist[0]}",
     "$nombre cannot speak for two rounds",
     "They take all those who have taken $nombre drunk",
     "$nombre Change clothes with ${newlist[0]}",
     "$nombre thinks of a number from 1 to 3, everyone will have to guess the number, whoever guesses wrong wins,"
     "$nombre walks like a penguin",
     "Looking duel between $nombre vs ${newlist[0]} whoever blinks loses",
     "$nombre declare yourself to a person you like",
     "$nombre how many people you've slept with, if it's more than ${newlist[0]}, take it",
     "$nombre if you cheated on a test baby",
     "$nombre show the group your last photo and explain it",
     "$nombre indicates who is going to drink",
     "$nombre confess something you've been keeping to ${newlist[0]}",
"You are very grateful, $nombre, so you drink with the owner of the house who invited you.",
"$nombre drinks with the person you think is the most beautiful/handsome.",
"$nombre drinks with the person you think is the ugliest.",
"Everyone who has traveled to the same countries as $nombre drinks.",
"Those with the same color of underwear as $nombre drink.",
"$nombre, every sentence you say has to end with 'Penis'.",
"$nombre, say who you would marry, kill, and be with in the group; they must be different people.",
"$nombre, take a photo with the sober ones.",
"$nombre, take a photo with the drunk ones.",
//
"Those who were not born in the same city as $nombre drink.",
"$nombre, guess the nombre of ${newlist[0]}'s pet.",
"$nombre, write on your social media 'Take a shot for every reaction I get,' and take a shot for each reaction.",
"$nombre, finish the sentences started by ${newlist[0]} for one round. If you fail, both of you drink.",
"People whose nombres start with the same letter as $nombre drink.",
"Group challenge: guess the country $nombre would like to travel to.",
"$nombre, strike a funny pose. Others have to add a new pose, and this continues until it goes through the entire group.",
"Everyone with LESS battery than $nombre drinks.",
"$nombre, post on your social media that ${newlist[0]} is single and available. Take a shot for each person who comments.",
"Everyone with lighter skin than $nombre drinks.",
//
"$nombre, choose the animal that ${newlist[0]} has to imitate.",
"$nombre, you can only use the bathroom with the door open.",
"$nombre, remain blindfolded for two rounds, don't spill the cup."

  ];


  List<String> titulo=[
    "Kamasutra",
"Confidencial",
"Rico ",
"Feliz cumpleaños",
"Igualdad",
"Netflix",
"Duelo a muerte",
"Hace calor",
"El amor",
"Que miras",
"Nada teme",
"Luz al final",
"DJ",
"Del closet",
"Influencer",
"Nada debe",
"Profesionales",
"Aumento",
"Una estrella",
"La granja",
"Fuego",
"Son dos shots",
"Pinocho",
"Sombra",
"Eres preciosa",
"Niña mala",
"Tornado",
"Bailarina ",
"Pegamento",
"Pegamento",
"Protegete ",
"Apoyo",
"calzones",
"Amigos",
"Marginado",
"Talento",
"Talento",
"Cambio",
"Sin llorar",
"Mi amor",
"Sinonimo",
"Fuerza",
"Superheroe",
"Ciego/a",
"Mayores",
"Menores",
"Pulgarcito ",
"Videojuego",
"Sigue",
"Ayudame",
"Silencio",
"Carretilla",
"Negocio",
"Adivina",
"Divertido",
"Mirame amor",
"Cupido",
"Nomada de camas",
"Tramposo",
"Fotografo",
"El lider"
"Confiesalo",
"Hogar dulce hogar",
"Don Juan",
"Betty la fea",
"Viajero",
"Compenetrados",
"Que pena",
"Dilo",
"Chis",
"El futuro del país",
"Citadino",
"Parte de la familia",
"Peligro",
"Atento",
"Nombre de familia",
"Mi sueño",
"David",
"Recarguen",
"Buen amigo",
"Color humilde",
"Sonidos de la naturaleza",
"Sin baño",
"Ciego"

  ]; 

 List<String> title=[
"kamasutra",
"Confidential",
"Rich ",
"Happy Birthday",
"Equality",
"Netflix",
"Deal to death",
"It's hot",
"Love",
"What are you staring at",
"Nothing fears",
"Light at the end",
"DJ",
"From the closet",
"Influencers",
"No gain",
"Professionals",
"Increase",
"A star",
"The farm",
"Fire",
"There are two shots",
"Pinocchio",
"Shade",
"You're beautiful",
"Bad girl",
"Twister",
"Dancer ",
"Glue",
"Glue",
"Protect yourself",
"Support",
"breeches",
"Friends",
"Outcast",
"Talent",
"Talent",
"Change",
"Without crying",
"My love",
"Synonymous",
"Force",
"Super Hero",
"blind",
"Older",
"Minor",
"little thumb",
"Videogame",
"Go on",
"Help me",
"Silence",
"Forklift truck",
"Business",
"Guess",
"Fun",
"Look at me love",
"Cupid",
"Nomad of beds",
"Cheating",
"Photographer",
"Leader",
"Confide it",
"Home sweet home",
"Don Juan",
"Ugly Betty",
"Traveler",
"Connected",
"What a shame",
"Say it",
"Hush",
"The future of the country",
"Citizen",
"Part of the family",
"Danger",
"Attentive",
"Family name",
"My dream",
"David",
"Recharge",
"Good friend",
"Humble color",
"Nature sounds",
"No bathroom",
"Blind",
  ]; 




    List<String> imagen = [
"Neon4.png",
"Neon2.png",
"Neon3.png",
"Neon15.png",
"Neon29.png",
"Neon30.png",
"Neon31.png",
"Neon26.png",
"Neon8.png",
"Neon33.png",
"Neon34.png",
"Neon9.png",
"Neon6.png",
"Neon12.png",
"Neon19.png",
"Neon16.png",
"Neon27.png",
"Neon2.png",
"Neon11.png",
"Neon5.png",
"Neon7.png",
"Neon16.png",
"Neon32.png",
"Neon38.png",
"Neon38.png",
"Neon37.png",
"Neon15.png",
"Neon5.png",
"Neon35.png",
"Neon35.png",
"Neon4.png",
"Neon17.png",
"Neon39.png",
"Neon6.png",
"Neon36.png",
"Neon26.png",
"Neon26.png",
"Neon39.png",
"Neon1.png",
"Neon1.png",
"Neon40.png",
"Neon27.png",
"Neon41.png",
"Neon42.png",
"Neon28.png",
"Neon28.png",
"Neon43.png",
"Neon44.png",
"Neon6.png",
"Neon26.png",
"Neon1.png",
"Neon51.png",
"Neon52.png",
"Neon53.png",
"Neon54.png",
"Neon55.png",
"Neon56.png",
"Neon57.png",
"Neon58.png",
"Neon59.png",
"Neon60.png",
"Neon61.png",
"Neon62.png",
"Neon63.png",
"Neon64.png",
"Neon65.png",
"Neon66.png",
"Neon67.png",
"Neon68.png",
"Neon69.png",
"Neon69.png",
"Neon70.png",
"Neon71.png",
"Neon72.png",
"Neon73.png",
"Neon74.png",
"Neon75.png",
"Neon76.png",
"Neon77.png",
"Neon78.png",
"Neon79.png",
"Neon80.png",
"Neon81.png",
"Neon82.png"
  ];
    cant.shuffle();



    return ["${desafios[cant[0]]}","${imagen[cant[0]]}","${titulo[cant[0]]}","${title[cant[0]]}","${challenges[cant[0]]}"];
   
  }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final listapersonaje=Provider.of<ListProvider>(context);

    List datos=textoDesafio(nombre,listapersonaje.listapersonaje);

    return Stack(
      children: [
        Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: FortuneWheel(
                    indicators: <FortuneIndicator>[
                      FortuneIndicator(
                        
                        alignment: Alignment
                            .topCenter, // <-- changing the position of the indicator
                        child: TriangleIndicator(
                          color: Color(0xFFF436E4), // <-- changing the color of the indicator
                        ),
                      ),
                    ],
                    selected: selected.stream,
                    animateFirst: false,
                    onFling: () {
    selected.add(1);
  },
                    //items

                    items: [
                      for (int i = 0; i < listapersonaje.listapersonaje.length; i++) ...<FortuneItem>{
                        FortuneItem(child: Text(listapersonaje.listapersonaje[i].toString(),style: TextStyle(
                          fontFamily: 'TiltNeon',
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),) ),
                      },
                    ],
                    styleStrategy: UniformStyleStrategy(
                      borderColor: Colors.black,
                      color: Color(0xFFAE00FF),
                      borderWidth: 2
                      ),
                    onAnimationEnd: () {
                      Timer(Duration(seconds: 1), () {
                        setState(() {
                          desafioMostrar = true;
                          nombre = listapersonaje.listapersonaje[selected.value];
                        });
                      });
                    },
                  ),
                ),
                Container(
                  height: size.height*0.1,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected.add(Fortune.randomInt(0, listapersonaje.listapersonaje.length));
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 0, 255),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                    child: Center(
                      child: Text(listapersonaje.idioma==0?"Rodar":"Spin",style: TextStyle(color: Colors.white,),),
                    


                    ),
                  ),
                ),
              ],
            ),
          ),

        Visibility(
          visible: desafioMostrar,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                            image: AssetImage("assets/Intrucciones_fondo_desafio.png"),
                            fit: BoxFit.fill,
                          ),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                  child: Column(
                    children: [
                      Container(height: size.height*0.03,),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.6,
                        //${datos[2]}
                        child:Text(listapersonaje.idioma==0?"${datos[2]}":"${datos[3]}",
                        textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                ),
                        ),
                        
                      ),
                      Container(
                        height: size.height * 0.2,
                        width: size.width * 0.65,
                        child:Text(listapersonaje.idioma==0?"${datos[0]}":"${datos[4]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                        ),
                        
                      ),
                      Container(
                        height: size.height * 0.20,
                        width: size.width * 0.41,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/${datos[1]}"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  Container(
                      height: size.height*0.74,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                                desafioMostrar = false;
                                mensajeMostrar = false;


                              });
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        child: Center(
                          child: Text(listapersonaje.idioma==0?"HECHO":"DONE"),
                        ),
                        decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 0, 255),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                      ),
                    ),
                ],
              ),





            ],
          ),
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
        image: DecorationImage(image: AssetImage("assets/FondoProbabilidad.png",),
        fit: BoxFit.fill,
        )
      ),


    );
  }
}
