import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../screens/personaProvider/provider.dart';
import '../BackgroundInstruccionesGeneral.dart';




// ignore: must_be_immutable
class NormalVerdadoResp extends StatefulWidget {


  @override
  State<NormalVerdadoResp> createState() => _NormalVerdadoRespState();
}

class _NormalVerdadoRespState extends State<NormalVerdadoResp> {
  final dataEnglis = [
    {"id" : 0, "Description" : "Who of this group would you take to a deserted island?"},
     {"id" : 1, "Description" : "What is the most embarrassing thing that has happened to you in your life?"},
     {"id" : 2, "Description" : "What was the strangest dream you've ever had?"},
     {"id" : 3, "Description" : "When was the last time you lied?"},
     {"id" : 4, "Description" : "What's the worst thing you've done at work?"},
     {"id" : 5, "Description" : "When was the last time you cried?"},
     {"id" : 6, "Description" : "What is your biggest fear?"},
     {"id" : 7, "Description" : "What is your biggest fantasy?"},
     {"id" : 8, "Description" : "Do you have any fetishes?"},
     {"id" : 9, "Description" : "Who is the last person you searched for on Instagram?"},
     {"id" : 10, "Description" : "What are you glad your family doesn't know about you?"},
     {"id" : 11, "Description" : "Have you ever cheated on someone?"},
     {"id" : 12, "Description" : "What's the weirdest place you've peed in?"},
     {"id" : 13, "Description" : "What's the worst thing you've ever done?"},
     {"id" : 14, "Description" : "What's the weirdest thing you've ever eaten?"},
     {"id" : 15, "Description" : "What is your relationship problem?"},
     {"id" : 16, "Description" : "What is the secret you have never told anyone?"},
     {"id" : 17, "Description" : "Do you have any hidden talents?"},
     {"id" : 18, "Description" : "Who was your first celebrity crush?"},
     {"id" : 19, "Description" : "What do you think of polyamory?"},
     {"id" : 20, "Description" : "What is the worst intimate experience you've ever had?"},
     {"id" : 21, "Description" : "What is the best intimate experience you've ever had?"},
     {"id": 22, "Description": "Have you ever cheated on an exam?"},
     {"id" : 23, "Description" : "If you were to participate in a reality show, what would it be?"},
     {"id" : 24, "Description" : "What's the most drunk you've ever had?"},
     {"id" : 25, "Description" : "Have you ever broken the law?"},
     {"id" : 26, "Description" : "What's the most embarrassing thing you've ever done?"},
     {"id": 27, "Description": "What is your biggest insecurity?"},
     {"id" : 28, "Description" : "Have you stayed friends with someone because they benefited you beyond friendship?"},

    //
    {"id" : 29, "Description" : "What is the biggest mistake you have made?"},
     {"id" : 30, "Description" : "What's the most disgusting thing you've ever done?"},
     {"id" : 31, "Description" : "Who would you like to kiss in this room?"},
     {"id" : 32, "Description" : "What do you hate when people find out about you?"},
     {"id" : 33, "Description" : "What's the worst thing they've ever done to you?"},
     {"id" : 34, "Description" : "What is the best thing someone has done for you?"},
     {"id" : 35, "Description" : "Have you ever had a run-in with the law?"},
     {"id": 36, "Description": "What is your worst habit?"},
     {"id" : 37, "Description" : "What's the most embarrassing thing you've ever done in a taxi?"},
     {"id" : 38, "Description" : "What's the worst thing you've said to someone?"},
     {"id" : 39, "Description" : "What's the worst date you've ever been on??"},
     {"id" : 40, "Description" : "What happened the last night out you had?"},
     {"id" : 41, "Description" : "What is the biggest misconception about you?"},
     {"id" : 42, "Description" : "What's the best advice you've ever been given?"},
     {"id" : 43, "Description" : "What do you only do when you're alone?"},
     {"id" : 44, "Description" : "If you had to get back together with an ex, who would you choose?"},
     {"id": 45, "Description": "Do you have a favorite friend?"},
     {"id": 46, "Description": "Do you have a favorite brother?"},
     {"id" : 47, "Description" : "What's the weirdest rumor you've heard about yourself?"},
     {"id" : 48, "Description" : "What turns you on the most?"},
     {"id": 49, "Description": "What is your favorite gross food combination?"},
     {"id" : 50, "Description" : "What's the dumbest reason you left a club early?"},
     {"id" : 51, "Description" : "What did you buy that was the biggest waste of money?"},
     {"id" : 52, "Description" : "If you could trade your life with someone in this room, who would it be?"},
     {"id" : 53, "Description" : "Do you masturbate every day?"},
     {"id": 54, "Description": "Have you eaten insects once?"},
     {"id" : 55, "Description" : "Did you stand up a date?"},
     {"id": 56, "Description": "Do you have a favorite brother?"},
     {"id": 57, "Description": "Have you ever gone out with slippers on the street?"},
     {"id" : 58, "Description" : "Have you ever run out of money before the end of the month?"},
     {"id" : 59, "Description" : "Did you run away from home to go to a party?"},
     {"id": 60, "Description": "Have you hooked up with a friend's partner?"},
      {"id": 61, "Description": "Have you ever lied to avoid an awkward situation?"},
  {"id": 62, "Description": "Have you ever snooped on someone's phone or messages without their permission?"},
  {"id": 63, "Description": "Have you ever regretted going out with someone after the first encounter?"},
  {"id": 64, "Description": "Have you ever hidden important information from your partner?"},
  {"id": 65, "Description": "Have you ever cheated on a significant exam or assignment?"},
  {"id": 66, "Description": "Have you ever taken advantage of a friend's generosity without them knowing?"},
  {"id": 67, "Description": "Have you ever spoken ill of someone behind their back and later regretted it?"},
  {"id": 68, "Description": "Have you ever broken something that belonged to someone else and not told them?"},
  {"id": 69, "Description": "Have you ever judged someone without knowing them completely?"},
  {"id": 70, "Description": "Have you ever experienced excessive jealousy in a relationship?"},
  {"id": 71, "Description": "Have you ever criticized a colleague's work without telling them directly?"},
  {"id": 72, "Description": "Have you ever taken credit for someone else's work in the workplace or academia?"},
  {"id": 73, "Description": "Have you ever skipped an important meeting without a valid reason?"},
  {"id": 74, "Description": "Have you ever spread gossip about a coworker or student?"},
  {"id": 75, "Description": "Have you ever used company or school resources for personal purposes?"},
  {"id": 76, "Description": "Have you ever let a teammate take the blame for something you did?"},
  {"id": 77, "Description": "Have you ever lied about your experience or skills in a job interview or academic presentation?"},
  {"id": 78, "Description": "Have you ever been tempted to plagiarize on a significant project or assignment?"},
  {"id": 79, "Description": "Have you ever avoided collaborating with a coworker or student because you don't like them?"},
  {"id": 80, "Description": "Have you ever intentionally ignored company or school policies?"},
  {"id": 81, "Description": "Have you ever hidden expenses from a trip from your partner or family?"},
  {"id": 82, "Description": "Have you ever abandoned a travel companion for a selfish reason?"},
  {"id": 83, "Description": "Have you ever been tempted to steal something from a hotel or place you visited?"},
  {"id": 84, "Description": "Have you ever lied about your language skills in a foreign country?"},
  {"id": 85, "Description": "Have you ever caused damage to someone else's property during a trip and not admitted it?"},
  {"id": 86, "Description": "Have you ever manipulated someone to get a better deal during a trip?"},
  {"id": 87, "Description": "Have you ever exaggerated about your experiences or activities during a trip?"},
  {"id": 88, "Description": "Have you ever taken advantage of the hospitality of locals inconsiderately?"},
  {"id": 89, "Description": "Have you ever avoided visiting friends or family during a trip without a valid reason?"},
  {"id": 90, "Description": "Have you ever left someone behind in an unfamiliar place without telling them?"},
  {"id": 91, "Description": "Have you ever exaggerated about the amount of alcohol you've consumed?"},
  {"id": 92, "Description": "Have you ever criticized a friend for their choice of drink in public?"},
  {"id": 93, "Description": "Have you ever gotten drunk and then regretted your behavior?"},
  {"id": 94, "Description": "Have you ever flirted with someone at a bar just to get free drinks?"},
  {"id": 95, "Description": "Have you ever ignored the bill and let someone else pay for you at a bar?"},
  {"id": 96, "Description": "Have you ever lied about your ability to pay to avoid buying rounds at a bar?"},
  {"id": 97, "Description": "Have you ever haggled with store staff for prices or promotions?"},
  {"id": 98, "Description": "Have you ever taken advantage of someone else's drunkenness for selfish intentions?"},
  {"id": 99, "Description": "Have you ever pretended to be intoxicated to avoid awkward situations at a bar?"},
  {"id": 100, "Description": "Have you ever caused a embarrassing scene in a bar due to your state of drunkenness?"}
  ];

  final data = [
    {"id" : 0, "Descripcion" : "¿De este grupo, a quién te llevarías a una isla desierta?"},
    {"id" : 1, "Descripcion" : "¿Qué es lo más vergonzoso que te ha pasado en la vida?"},
    {"id" : 2, "Descripcion" : "¿Cuál fue el sueño más extraño que has tenido?"},
    {"id" : 3, "Descripcion" : "¿Cuándo fue la última vez que mentiste?"},
    {"id" : 4, "Descripcion" : "¿Qué es lo peor que has hecho en el trabajo?"},
    {"id" : 5, "Descripcion" : "¿Cuándo fue la última vez que lloraste?"},
    {"id" : 6, "Descripcion" : "¿Cuál es tu mayor miedo?"},
    {"id" : 7, "Descripcion" : "¿Cuál es tu mayor fantasía?"},
    {"id" : 8, "Descripcion" : "¿Tienes algún fetiche?"},
    {"id" : 9, "Descripcion" : "¿Quién es la última persona que has buscado en Instagram?"},
    {"id" : 10, "Descripcion" : "¿Qué es lo que te alegra que tu familia no sepa de ti?"},
    {"id" : 11, "Descripcion" : "¿Has engañado alguna vez a alguien?"},
    {"id" : 12, "Descripcion" : "¿Cuál es el lugar más extraño en el que has orinado?"},
    {"id" : 13, "Descripcion" : "¿Qué es lo peor que has hecho?"},
    {"id" : 14, "Descripcion" : "¿Qué es lo más extraño que has comido?"},
    {"id" : 15, "Descripcion" : "¿Cuál es tu problema en las relaciones?"},
    {"id" : 16, "Descripcion" : "¿Cuál es el secreto que nunca le has contado a nadie?"},
    {"id" : 17, "Descripcion" : "¿Tienes algún talento oculto?"},
    {"id" : 18, "Descripcion" : "¿Quién fue tu primer amor 'celebrity'?"},
    {"id" : 19, "Descripcion" : "¿Qué opinas del poliamor?"},
    {"id" : 20, "Descripcion" : "¿Cuál es la peor experiencia íntima que has tenido?"},
    {"id" : 21, "Descripcion" : "¿Cuál es la mejor experiencia íntima que has tenido?"},
    {"id" : 22, "Descripcion" : "¿Has copiado alguna vez en un examen?"},
    {"id" : 23, "Descripcion" : "Si fueras a participar en un 'reality show', ¿cuál sería?"},
    {"id" : 24, "Descripcion" : "¿Cuál es la mayor borrachera que has tenido?"},
    {"id" : 25, "Descripcion" : "¿Has infringido alguna vez la ley?"},
    {"id" : 26, "Descripcion" : "¿Qué es lo más vergonzoso que has hecho?"},
    {"id" : 27, "Descripcion" : "¿Cuál es tu mayor inseguridad?"},
    {"id" : 28, "Descripcion" : "¿Has seguido siendo amigo de alguien porque te beneficiaba más allá de la amistad?"},
    {"id" : 29, "Descripcion" : "¿Cuál es el mayor error que has cometido?"},
    {"id" : 30, "Descripcion" : "¿Qué es lo más desagradable que has hecho?"},
    {"id" : 31, "Descripcion" : "¿A quién te gustaría besar en esta habitación?"},
    {"id" : 32, "Descripcion" : "¿Qué es lo que odias que la gente sepa de ti?"},
    {"id" : 33, "Descripcion" : "¿Qué es lo peor que te han hecho?"},
    {"id" : 34, "Descripcion" : "¿Qué es lo mejor que alguien ha hecho por ti?"},
    {"id" : 35, "Descripcion" : "¿Has tenido alguna vez un enfrentamiento con la ley?"},
    {"id" : 36, "Descripcion" : "¿Cuál es tu peor hábito?"},
    {"id" : 37, "Descripcion" : "¿Qué es lo más vergonzoso que has hecho en un taxi?"},
    {"id" : 38, "Descripcion" : "¿Qué es lo peor que le has dicho a alguien?"},
    {"id" : 39, "Descripcion" : "¿Cuál es la peor cita que has tenido??"},
    {"id" : 40, "Descripcion" : "¿Qué pasó en la última noche de fiesta que has tenido?"},
    {"id" : 41, "Descripcion" : "¿Cuál es la mayor idea errónea sobre ti?"},
    {"id" : 42, "Descripcion" : "¿Cuál es el mejor consejo que te han dado?"},
    {"id" : 43, "Descripcion" : "¿Qué es lo que solo haces cuando estás solo?"},
    {"id" : 44, "Descripcion" : "Si tuvieras que volver con un ex, ¿a quién elegirías?"},
    {"id" : 45, "Descripcion" : "¿Tienes un amigo favorito?"},
    {"id" : 46, "Descripcion" : "¿Tienes un hermano favorito?"},
    {"id" : 47, "Descripcion" : "¿Cuál es el rumor más extraño que has escuchado sobre ti?"},
    {"id" : 48, "Descripcion" : "¿Qué es lo que más te excita?"},
    {"id" : 49, "Descripcion" : "¿Cuál es tu combinación de alimentos asquerosos favorita?"},
    {"id" : 50, "Descripcion" : "¿Cuál es la razón más tonta por la que has abandonado un club antes de tiempo?"},
    {"id" : 51, "Descripcion" : "¿Qué has comprado que haya sido el mayor despilfarro de dinero?"},
    {"id" : 52, "Descripcion" : "Si pudieras intercambiar tu vida con alguien de esta sala, ¿quién sería?"},
    {"id" : 53, "Descripcion" : "¿Te masturbas cada día?"},
    {"id" : 54, "Descripcion" : "¿Has comido insectos una vez?"},
    {"id" : 55, "Descripcion" : "¿Has dejado a alguna cita plantada?"},
    {"id" : 56, "Descripcion" : "¿Tienes un hermano favorito?"},
    {"id" : 57, "Descripcion" : "¿Alguna vez has salido con zapatillas de andar por casa a la calle?"},
    {"id" : 58, "Descripcion" : "¿Alguna vez te has quedado sin dinero antes de llegar a fin de mes?"},
    {"id" : 59, "Descripcion" : "¿Te has escapado de casa para ir de fiesta?"},
    {"id" : 60, "Descripcion" : "¿Te has liado con la pareja de un amigo?"},
    {"id": 61, "Descripcion": "¿Alguna vez has mentido para evitar una situación incómoda?"},
    {"id": 62, "Descripcion": "¿Has espiado el teléfono o mensajes de alguien sin su permiso?"},
{"id": 63, "Descripcion": "¿Te has arrepentido de salir con alguien después del primer encuentro?"},
{"id": 64, "Descripcion": "¿Alguna vez has ocultado información importante a tu pareja?"},
{"id": 65, "Descripcion": "¿Has copiado alguna vez en un examen o tarea importante?"},
{"id": 66, "Descripcion": "¿Te has aprovechado alguna vez de la generosidad de un amigo sin que lo supiera?"},
{"id": 67, "Descripcion": "¿Has hablado mal de alguien a sus espaldas y luego te has arrepentido?"},
{"id": 68, "Descripcion": "¿Has roto alguna vez algo que pertenecía a alguien más y no se lo dijiste?"},
{"id": 69, "Descripcion": "¿Has juzgado a alguien sin conocerlo completamente?"},
{"id": 70, "Descripcion": "¿Alguna vez has experimentado celos excesivos en una relación?"},
{"id": 71, "Descripcion": "¿Alguna vez has criticado el trabajo de un colega sin decírselo directamente?"},
{"id": 72, "Descripcion": "¿Has tomado crédito por el trabajo de alguien más en el entorno laboral o académico?"},
{"id": 73, "Descripcion": "¿Te has ausentado de una reunión importante sin una razón válida?"},
{"id": 74, "Descripcion": "¿Has difundido chismes sobre un compañero de trabajo o estudiante?"},
{"id": 75, "Descripcion": "¿Has utilizado recursos de la empresa o de la escuela para fines personales?"},
{"id": 76, "Descripcion": "¿Alguna vez has dejado que un compañero de equipo tome la culpa por algo que tú hiciste?"},
{"id": 77, "Descripcion": "¿Has mentido sobre tu experiencia o habilidades en una entrevista de trabajo o presentación académica?"},
{"id": 78, "Descripcion": "¿Te has sentido tentado a plagiar en un proyecto o tarea importante?"},
{"id": 79, "Descripcion": "¿Has evitado colaborar con un compañero de trabajo o estudiante porque no te cae bien?"},
{"id": 80, "Descripcion": "¿Has ignorado las políticas de la empresa o de la escuela de manera intencional?"},
{"id": 81, "Descripcion": "¿Has ocultado gastos de un viaje a tu pareja o familia?"},
{"id": 82, "Descripcion": "¿Alguna vez has abandonado a un compañero de viaje por alguna razón egoísta?"},
{"id": 83, "Descripcion": "¿Te has sentido tentado a robar algo de un hotel o lugar que has visitado?"},
{"id": 84, "Descripcion": "¿Has mentido sobre tus habilidades lingüísticas en un país extranjero?"},
{"id": 85, "Descripcion": "¿Has causado algún daño a la propiedad de alguien más durante un viaje y no lo admitiste?"},
{"id": 86, "Descripcion": "¿Alguna vez has manipulado a alguien para obtener un mejor trato durante un viaje?"},
{"id": 87, "Descripcion": "¿Has exagerado alguna vez sobre tus experiencias o actividades durante un viaje?"},
{"id": 88, "Descripcion": "¿Te has aprovechado de la hospitalidad de los locales de manera desconsiderada?"},
{"id": 89, "Descripcion": "¿Has evitado visitar a amigos o familiares durante un viaje sin una razón válida?"},
{"id": 90, "Descripcion": "¿Has dejado a alguien atrás en un lugar desconocido sin decírselo?"},
{"id": 91, "Descripcion": "¿Has exagerado alguna vez sobre la cantidad de alcohol que has consumido?"},
{"id": 92, "Descripcion": "¿Has criticado a un amigo por su elección de bebida en público?"},
{"id": 93, "Descripcion": "¿Te has embriagado y luego lamentado tu comportamiento?"},
{"id": 94, "Descripcion": "¿Has coqueteado con alguien en un bar solo para obtener bebidas gratis?"},
{"id": 95, "Descripcion": "¿Alguna vez has ignorado la cuenta y dejado que alguien más pague por ti en un bar?"},
{"id": 96, "Descripcion": "¿Has mentido sobre tu capacidad de pago para evitar comprar rondas en un bar?"},
{"id": 97, "Descripcion": "¿Has regateado con el personal de una tienda por precios o promociones?"},
{"id": 98, "Descripcion": "¿Te has aprovechado de la embriaguez de alguien más con intenciones egoístas?"},
{"id": 99, "Descripcion": "¿Has fingido estar intoxicado para evitar situaciones incómodas en un bar?"},
{"id": 100, "Descripcion": "¿Alguna vez has causado una escena vergonzosa en un bar debido a tu estado de embriaguez?"}
  ];

  Object? cuerpotexto = "";

  Object? cuerpotext = "";

  @override
  Widget build(BuildContext context) {
    int tamanolista = data.length;

    var intValue = Random().nextInt(tamanolista);
    final listapersonaje=Provider.of<ListProvider>(context);
    
    cuerpotexto=data[intValue]["Descripcion"];
    cuerpotext=dataEnglis[intValue]["Description"];
   


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(listapersonaje.idioma==0?'¿Verdad o reto?':"Truth or Dare?"),
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
                child: CuadroTexto()
                ),
            ),
            Center(child: BotonVerdad()),
            Center(child: _TextoEnPantalla(textoValor: listapersonaje.idioma==0?"$cuerpotexto":"$cuerpotext")),



            
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
          ),
        
        







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

              
              
              
              )
        
        
        ),



        


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
                  

                  
                  
                Hero(
                    tag: 1, 
                    child: ClipRRect(

                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage(listapersonaje.idioma==0?"assets/Verdad.jpg":"assets/Truth.png"), 
                      placeholder: AssetImage("assets/loading.gif"),),
                  
                  
                  )
                    
                    
                    
                    
                    ),

              
                Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),


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