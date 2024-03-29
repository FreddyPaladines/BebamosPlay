import 'dart:core';

class JuegosCarta {
  final int position;
  final String nombre;
  final String descripcion;
  final String imaganes;
  final String ruta;

  JuegosCarta(
    this.position, {
    required this.nombre,
    required this.descripcion,
    required this.imaganes,
    required this.ruta,
  });
}


class JuegosYoNunca {
  final int position;
  final String description;
  final String descripcion;
  final String imaganes;
  final String ruta;

  JuegosYoNunca(
    this.position,
     {
    required this.description,
    required this.descripcion,
    required this.imaganes,
    required this.ruta,
  });
}

List<JuegosYoNunca> juegosYoNunca = [
  JuegosYoNunca(
    1,
    descripcion: "Yo nunca he trabajado borracho.",
    description: "I have never worked drunk.",
    imaganes: "assets/YoNunca/Borracho.png",
    ruta: "",
  ),
  JuegosYoNunca(
    2,
    descripcion:
        "Yo nunca he dicho que me gustaba mucho un regalo y luego lo he devuelto.",
    description: "I have never said that I really liked a gift and then returned it.",
    imaganes: "assets/YoNunca/Regalo.png",
    ruta: "",
  ),
  JuegosYoNunca(
    3,
    description: "I have never done or received an erotic dance.",

    descripcion: "Yo nunca he hecho o recibido un baile erótico.",
    imaganes: "assets/YoNunca/Baile_Mujer.png",
    ruta: "",
  ),
  JuegosYoNunca(
    4,
    description:"I have never deleted a photo from a social network for not liking how I look.", 
    descripcion:
        "Yo nunca he borrado una foto de una red social por no gustarme cómo salgo.",
    imaganes: "assets/YoNunca/NoMegusta.png",
    ruta: "",
  ),
  JuegosYoNunca(
    5,
    description: "I never thought that I am the most beautiful person in this group.",
    descripcion: "Yo nunca pensé que soy la persona más bella de este grupo.",
    imaganes: "assets/YoNunca/Belleza.png",
    ruta: "",
  ),
  JuegosYoNunca(
    6,
    description:"I have never been with a stranger.",
    descripcion: "Yo nunca he estado con un extraño.",
    imaganes: "assets/YoNunca/1_Extrano.png",
    ruta: "",
  ),
  JuegosYoNunca(
    7,
    description: "I have never used drugs.",
    descripcion: "Yo nunca he consumido drogas.",
    imaganes: "assets/YoNunca/2_Droga.png",
    ruta: "",
  ),
  JuegosYoNunca(
    8,
    description:"I never sent a brash message to the wrong person.",
    descripcion:
        "Yo nunca envié una mensaje fuerte o descarado a la persona equivocada.",
    imaganes: "assets/YoNunca/3_Mensaje.png",
    ruta: "",
  ),
  JuegosYoNunca(
    9,
    description: "I have never been handcuffed (for any reason)",
    descripcion: "Yo nunca he estado esposado (por cualquier motivo).",
    imaganes: "assets/YoNunca/4_Esposa.png",
    ruta: "",
  ),
  JuegosYoNunca(
    10,
    description:"I've never smelled my own underwear to see if it's clean or dirty.",
    descripcion:
        "Yo nunca he olido mi propia ropa interior para ver si está limpia o sucia.",
    imaganes: "assets/YoNunca/5_RopaInterior.png",
    ruta: "",
  ),
  JuegosYoNunca(
    11,
    description: "I have never stolen anything in a store.",
    descripcion: "Yo nunca he robado nada en una tienda.",
    imaganes: "assets/YoNunca/6_Robar.png",
    ruta: "",
  ),
  JuegosYoNunca(
    12,
    description: "I have never played Stranger Things with the lights at home or the lights on the Christmas tree.",
    descripcion:
        "Yo nunca he jugado a Stranger Things con las luces de casa o las del árbol de Navidad.",
    imaganes: "assets/YoNunca/7_Stranger.png",
    ruta: "",
  ),
  JuegosYoNunca(
    13,
    description:"I have never done a Game of Thrones spoiler, accidentally or on purpose.",
    descripcion:
        "Yo nunca he hecho un spoiler de Juego de Tronos, sin querer o a propósito.",
    imaganes: "assets/YoNunca/8_Tronos.png",
    ruta: "",
  ),
  JuegosYoNunca(
    14,
    description: "I have never lied to my friends.",
    descripcion: "Yo nunca he mentido a mis amigos.",
    imaganes: "assets/YoNunca/9_Mentir.png",
    ruta: "",
  ),
  JuegosYoNunca(
    15,
    description: "I have never entered a party without being invited.",
    descripcion: "Yo nunca he entrado a una fiesta sin estar invitado.",
    imaganes: "assets/YoNunca/10_Fiesta.png",
    ruta: "",
  ),
  JuegosYoNunca(
    16,
    description: "I have never received a slap in public.",
    descripcion: "Yo nunca he recibido una bofetada en público.",
    imaganes: "assets/YoNunca/11_Cachetada.png",
    ruta: "",
  ),
  JuegosYoNunca(
    17,
    description:"Yo nunca he escuchado reggaetón en sesión privada en Spotify para que nadie me descurbiera.",

    descripcion:
        "Yo nunca he escuchado reggaetón en sesión privada en Spotify para que nadie me descurbiera.",
    imaganes: "assets/YoNunca/12_Spotify.png",
    ruta: "",
  ),
  JuegosYoNunca(
    18,
    description:"I have never said the wrong name during sex.",
    descripcion:
        "Yo nunca he dicho el nombre equivocado durante las relaciones sexuales.",
    imaganes: "assets/YoNunca/13_Oops.png",
    ruta: "",
  ),
  JuegosYoNunca(
    19,
    description: "I have never been with anyone from my family.",
    descripcion: "Yo nunca he estado con nadie de mi familia.",
    imaganes: "assets/YoNunca/14_Family.png",
    ruta: "",
  ),
  JuegosYoNunca(
    20,
    description: "I have never sent a hot message to a wrong number.",
    descripcion: "Yo nunca envié un mensaje caliente a un número equivocado.",
    imaganes: "assets/YoNunca/15_Celular.png",
    ruta: "",
  ),
  JuegosYoNunca(
    21,
    description:"I have never sent a hot message to a wrong number.",
    descripcion:
        "Yo nunca he tenido relaciones sexuales con alguien que me doblaba la edad.",
    imaganes: "assets/YoNunca/16_Abuela.png",
    ruta: "",
  ),
  JuegosYoNunca(
    22,
    description:"I never thought I could have an STD.",
    descripcion: "Yo nunca pensé que podría tener una ETS.",
    imaganes: "assets/YoNunca/17_Virus.png",
    ruta: "",
  ),
  JuegosYoNunca(
    23,
    description:"I have never used a common object as a sex toy and put it back in its place.",
    descripcion:
        "Yo nunca he usado un objeto común como juguete sexual y lo he devuelto a su sitio.",
    imaganes: "assets/YoNunca/18_dildo.png",
    ruta: "",
  ),
  JuegosYoNunca(
    24,
    description:"I've never had a threesome.",
    descripcion: "Yo nunca he hecho un trío.",
    imaganes: "assets/YoNunca/19_Trio.png",
    ruta: "",
  ),
  JuegosYoNunca(
    25,
    description: "I have never had sex more than 5 times in one night.",
    descripcion: "Yo nunca he tenido sexo más de 5 veces en una noche.",
    imaganes: "assets/YoNunca/20_Conejo.png",
    ruta: "",
  ),
  JuegosYoNunca(
    26,
    description:"I never wanted to have relations with a person of the same sex.",
    descripcion:
        "Yo nunca quise tener relaciones con una persona del mismo sexo.",
    imaganes: "assets/YoNunca/19_Trio.png",
    ruta: "",
  ),
  JuegosYoNunca(
    27,
    description: "I have never masturbated outdoors.",
    descripcion: "Yo nunca me he masturbado al aire libre.",
    imaganes: "assets/YoNunca/21_Libertad.png",
    ruta: "",
  ),
  JuegosYoNunca(
    28,
    description:  "Yo nunca me he exhibido por webcam.",
    descripcion: "Yo nunca me he exhibido por webcam.",
    imaganes: "assets/YoNunca/22_Camara.png",
    ruta: "",
  ),
  JuegosYoNunca(
    29,
    description: "I have never been unfaithful.",
    descripcion: "Yo nunca he sido infiel.",
    imaganes: "assets/YoNunca/23_Infidelidad.png",
    ruta: "",
  ),
  JuegosYoNunca(
    30,
    description: "I never swam naked.",
    descripcion: "Yo nunca nadé desnudo.",
    imaganes: "assets/YoNunca/24_Nadar.png",
    ruta: "",
  ),
  JuegosYoNunca(
    31,
    description: "I've never gotten involved with a friend's ex.",
    descripcion: "Yo nunca me he liado con el ex de un/a amigo/a.",
    imaganes: "assets/YoNunca/25_Amigos.png",
    ruta: "",
  ),
  JuegosYoNunca(
    32,
    description: "I have never gotten back together with my ex-partner.",
    descripcion: "Yo nunca he vuelto con mi expareja.",
    imaganes: "assets/YoNunca/26_Aceptar.png",
    ruta: "",
  ),
  JuegosYoNunca(
    33,
    description: "I've never been with someone in this group.",
    descripcion: "Yo nunca he estado con alguien este grupo.",
    imaganes: "assets/YoNunca/27_Ojitos.png",
    ruta: "",
  ),
  JuegosYoNunca(
    34,
    description: "I have never had sex with anyone in this group.",
    descripcion: "Yo nunca he tenido sexo con alguien este grupo.",
    imaganes: "assets/YoNunca/27_Ojitos.png",
    ruta: "",
  ),
  JuegosYoNunca(
    35,
    description: "I've never gotten into a fist fight",
    descripcion: "Yo nunca me he metido en una pelea a puñetazos",
    imaganes: "assets/YoNunca/28_Golpe.png",
    ruta: "",
  ),
  JuegosYoNunca(
    36,
    description: "I have never cried during a Pixar movie",
    descripcion: "Yo nunca he llorado durante una película de Pixar",
    imaganes: "assets/YoNunca/29_Pixar.png",
    ruta: "",
  ),
  JuegosYoNunca(
    37,
    description: "I have never dressed as the opposite sex.",
    descripcion: "Yo nunca me he vestido como del sexo opuesto",
    imaganes: "assets/YoNunca/30_Ropa.png",
    ruta: "",
  ),
  JuegosYoNunca(
    38,
    description: "I have never pretended to have a boyfriend or girlfriend",
    descripcion: "Yo nunca he fingido tener novio o novia",
    imaganes: "assets/YoNunca/31_Novios.png",
    ruta: "",
  ),
  JuegosYoNunca(
    39,
    description: "I have never cried in the bathroom at school, college or university",
    descripcion:
        "Yo nunca he llorado en el baño de la escuela, colegio o universidad",
    imaganes: "assets/YoNunca/32_CorazonRoto.png",
    ruta: "",
  ),
  JuegosYoNunca(
    40,
    description: "I have never doubted my sexual orientation",
    descripcion: "Nunca jamás he dudado de mi orientación sexual",
    imaganes: "assets/YoNunca/33_Dudar.png",
    ruta: "",
  ),
  JuegosYoNunca(
    41,
    description: "I have never felt attracted to my boss",
    descripcion: "Yo nunca me he sentido atraido por mi jefe o jefa",
    imaganes: "assets/YoNunca/41_Jefe.png",
    ruta: "",
  ),
  JuegosYoNunca(
    42,
    description: "I have never made love at my parents' house",
    descripcion: "Yo nunca he hecho el amor en casa de mis padres",
    imaganes: "assets/YoNunca/42_Suegros.png",
    ruta: "",
  ),
  JuegosYoNunca(
    43,
    description: "I have never sent private messages to a famous person",
    descripcion: "Yo nunca he mandado mensajes privados a un famoso",
    imaganes: "assets/YoNunca/43_Mensaje.png",
    ruta: "",
  ),
  JuegosYoNunca(
    44,
    description: "I have never been in a relationship with someone 7 years older than me.",
    descripcion: "Yo nunca he mantenido relaciones con alguien 7 años mayor que yo.",
    imaganes: "assets/YoNunca/44_Mayores.png",
    ruta: "",
  ),
  JuegosYoNunca(
    45,
    description: "I have never told someone's secret.",
    descripcion: "Yo nunca he contado el secreto de alguien.",
    imaganes: "assets/YoNunca/45_Secreto.png",
    ruta: "",
  ),
  JuegosYoNunca(
    46,
    description: "I have never been to an adult store.",
    descripcion: "Nunca he estado en una tienda para adultos.",
    imaganes: "assets/YoNunca/46_Store.png",
    ruta: "",
  ),
  JuegosYoNunca(
    47,
    description: "I have never gone out without clothes.",
    descripcion: "Nunca he salido a la calle sin ropa.",
    imaganes: "assets/YoNunca/47_SinInterior.png",
    ruta: "",
  ),
  JuegosYoNunca(
    48,
    description: "I have never met someone from a dating app.",
    descripcion: "Nunca me he encontrado con alguien de una aplicación de citas.",
    imaganes: "assets/YoNunca/48_Tinder.png",
    ruta: "",
  ),
  JuegosYoNunca(
    49,
    description: "I have never lost my underwear.",
    descripcion: "Nunca he perdido mi ropa interior.",
    imaganes: "assets/YoNunca/49_Ropa.png",
    ruta: "",
  ),
  JuegosYoNunca(
    50,
    description: "I have never gotten a tattoo",
    descripcion: "Nunca me he hecho un tatuaje",
    imaganes: "assets/YoNunca/50_Tatuaje.png",
    ruta: "",
  ),
  
JuegosYoNunca(
  51,
  description: "I have never had a crush on a fictional character",
  descripcion: "Nunca he tenido un enamoramiento por un personaje ficticio",
  imaganes: "assets/YoNunca/Nunca_51.png",
  ruta: "",
),

JuegosYoNunca(
  52,
  description: "I have never had a secret admirer",
  descripcion: "Nunca he tenido un admirador secreto",
  imaganes: "assets/YoNunca/Nunca_52.png",
  ruta: "",
),

JuegosYoNunca(
  53,
  description: "I have never had a crush on a teacher",
  descripcion: "Nunca he tenido un romance con un profesor",
  imaganes: "assets/YoNunca/Nunca_53.png",
  ruta: "",
),

JuegosYoNunca(
  54,
  description: "I have never had a romantic picnic",
  descripcion: "Nunca he tenido un picnic romántico",
  imaganes: "assets/YoNunca/Nunca_54.png",
  ruta: "",
),

JuegosYoNunca(
  55,
  description: "I have never had a crush on a coworker",
  descripcion: "Nunca he tenido un enamoramiento por un compañero de trabajo",
  imaganes: "assets/YoNunca/Nunca_55.png",
  ruta: "",
),

JuegosYoNunca(
  56,
  description: "I have never kissed someone on a Ferris wheel",
  descripcion: "Nunca he besado a alguien en una noria",
  imaganes: "assets/YoNunca/Nunca_56.png",
  ruta: "",
),

JuegosYoNunca(
  57,
  description: "I have never had a crush on a friend's sibling",
  descripcion: "Nunca he tenido un enamoramiento por el hermano/a de un amigo",
  imaganes: "assets/YoNunca/Nunca_57.png",
  ruta: "",
),

JuegosYoNunca(
  58,
  description: "I have never written a love letter",
  descripcion: "Nunca he escrito una carta de amor",
  imaganes: "assets/YoNunca/Nunca_58.png",
  ruta: "",
),

JuegosYoNunca(
  59,
  description: "I have never had a crush on a boss",
  descripcion: "Nunca he tenido un enamoramiento con un jefe",
  imaganes: "assets/YoNunca/Nunca_59.png",
  ruta: "",
),

JuegosYoNunca(
  60,
  description: "I have never had a romantic dance in the rain",
  descripcion: "Nunca he tenido un baile romántico bajo la lluvia",
  imaganes: "assets/YoNunca/Nunca_60.png",
  ruta: "",
),

JuegosYoNunca(
  61,
  description: "I have never flirted with a stranger at a bar",
  descripcion: "Nunca he coqueteado con un desconocido en un bar",
  imaganes: "assets/YoNunca/Nunca_61.png",
  ruta: "",
),

JuegosYoNunca(
  62,
  description: "I have never kissed someone at midnight on New Year's Eve",
  descripcion: "Nunca he besado a alguien a medianoche en Año Nuevo",
  imaganes: "assets/YoNunca/Nunca_62.png",
  ruta: "",
),

JuegosYoNunca(
  63,
  description: "I have never had a crush on a neighbor",
  descripcion: "Nunca he tenido un enamoramiento con un vecino",
  imaganes: "assets/YoNunca/Nunca_63.png",
  ruta: "",
),

JuegosYoNunca(
  64,
  description: "I have never crashed my parents' car",
  descripcion: "Nunca he chocado el carro de mis padres",
  imaganes: "assets/YoNunca/Nunca_64.png",
  ruta: "",
),

JuegosYoNunca(
  65,
  description: "I have never danced provocatively in public",
  descripcion: "Nunca he bailado de manera provocativa en público",
  imaganes: "assets/YoNunca/Nunca_65.png",
  ruta: "",
),

JuegosYoNunca(
  66,
  description: "I have never kissed someone on the first date",
  descripcion: "Nunca he besado a alguien en la primera cita",
  imaganes: "assets/YoNunca/Nunca_66.png",
  ruta: "",
),

JuegosYoNunca(
  67,
  description: "I have never done a TV series or movie marathon for an entire day.",
  descripcion: "Nunca he hecho una maratón de series o películas durante todo un día.",
  imaganes: "assets/YoNunca/Nunca_67.png",
  ruta: "",
),

JuegosYoNunca(
  68,
  description: "I have never tried aphrodisiac foods",
  descripcion: "Nunca he probado alimentos afrodisíacos",
  imaganes: "assets/YoNunca/Nunca_68.png",
  ruta: "",
),

JuegosYoNunca(
  69,
  description: "I have never kissed someone of the same gender",
  descripcion: "Nunca he besado a alguien del mismo género",
  imaganes: "assets/YoNunca/Nunca_69.png",
  ruta: "",
),

JuegosYoNunca(
  70,
  description: "I have never written an erotic story",
  descripcion: "Nunca he escrito una historia erótica",
  imaganes: "assets/YoNunca/Nunca_70.png",
  ruta: "",
),

JuegosYoNunca(
  71,
  description: "I have never used a blindfold during intimacy",
  descripcion: "Nunca he utilizado una venda en los ojos durante la intimidad",
  imaganes: "assets/YoNunca/Nunca_71.png",
  ruta: "",
),

JuegosYoNunca(
  72,
  description: "I have never fantasized about a coworker",
  descripcion: "Nunca he tenido fantasías sobre un compañero de trabajo",
  imaganes: "assets/YoNunca/Nunca_72.png",
  ruta: "",
),

JuegosYoNunca(
  73,
  description: "I have never been caught flirting at work",
  descripcion: "Nunca me han descubierto coqueteando en el trabajo",
  imaganes: "assets/YoNunca/Nunca_73.png",
  ruta: "",
),

JuegosYoNunca(
  74,
  description: "I have never sent a naughty picture",
  descripcion: "Nunca he enviado una foto atrevida",
  imaganes: "assets/YoNunca/Nunca_74.png",
  ruta: "",
),

JuegosYoNunca(
  75,
  description: "I have never had a crush on a friend's ex",
  descripcion: "Nunca he tenido un enamoramiento con el ex de un amigo",
  imaganes: "assets/YoNunca/Nunca_75.png",
  ruta: "",
),
  JuegosYoNunca(
  76,
  description: "I have never skinny-dipped in the ocean",
  descripcion: "Nunca me he bañado desnudo en el océano",
  imaganes: "assets/YoNunca/Nunca_76.png",
  ruta: "",
),

JuegosYoNunca(
  77,
  description: "I have never lost the car keys.",
  descripcion: "Nunca he perdido las llaves del carro.",
  imaganes: "assets/YoNunca/Nunca_77.png",
  ruta: "",
),

JuegosYoNunca(
  78,
  description: "I have never lost my luggage during a flight.",
  descripcion: "Nunca he perdido mi equipaje durante un vuelo.",
  imaganes: "assets/YoNunca/Nunca_78.png",
  ruta: "",
),

JuegosYoNunca(
  79,
  description: "I have never used a VIP lounge at the airport.",
  descripcion: "Nunca he utilizado una sala VIP en el aeropuerto",
  imaganes: "assets/YoNunca/Nunca_79.png",
  ruta: "",
),

JuegosYoNunca(
  80,
  description: "I have never spent hours procrastinating instead of studying.",
  descripcion: "Nunca he pasado horas procrastinando en lugar de estudiar.",
  imaganes: "assets/YoNunca/Nunca_80.png",
  ruta: "",
),
JuegosYoNunca(
  81,
  description: "I have never used a pickup line",
  descripcion: "Nunca he utilizado una frase para ligar",
  imaganes: "assets/YoNunca/Nunca_81.png",
  ruta: "",
),

JuegosYoNunca(
  82,
  description: "I have never had a one-night stand",
  descripcion: "Nunca he tenido una aventura de una noche",
  imaganes: "assets/YoNunca/Nunca_82.png",
  ruta: "",
),

JuegosYoNunca(
  83,
  description: "I have never failed a course.",
  descripcion: "Nunca he reprobado una asignatura",
  imaganes: "assets/YoNunca/Nunca_83.png",
  ruta: "",
),
JuegosYoNunca(
  84,
  description: "I have never been late to an important meeting",
  descripcion: "Nunca he llegado tarde a una reunión importante.",
  imaganes: "assets/YoNunca/Nunca_84.png",
  ruta: "",
),

JuegosYoNunca(
  85,
  description: "I have never used a fake excuse to avoid an event.",
  descripcion: "Nunca he utilizado una excusa falsa para evitar un evento.",
  imaganes: "assets/YoNunca/Nunca_85.png",
  ruta: "",
),

JuegosYoNunca(
  86,
  description: "I have never accidentally sent a text about someone to that person.",
  descripcion: "Nunca he enviado accidentalmente un mensaje sobre alguien a esa persona.",
  imaganes: "assets/YoNunca/Nunca_86.png",
  ruta: "",
),

JuegosYoNunca(
  87,
  description: "I have never pretended to know a language to impress someone.",
  descripcion: "Nunca he fingido saber un idioma para impresionar a alguien.",
  imaganes: "assets/YoNunca/Nunca_87.png",
  ruta: "",
),

JuegosYoNunca(
  88,
  description: "I have never lied about my favorite book to sound more intellectual.",
  descripcion: "Nunca he mentido sobre mi libro favorito para parecer más intelectual.",
  imaganes: "assets/YoNunca/Nunca_88.png",
  ruta: "",
),

JuegosYoNunca(
  89,
  description: "I have never pretended to be interested in a hobby to impress someone.",
  descripcion: "Nunca he fingido estar interesado en un pasatiempo para impresionar a alguien.",
  imaganes: "assets/YoNunca/Nunca_89.png",
  ruta: "",
),

JuegosYoNunca(
  90,
  description: "I have never accidentally sent a love message to a family member.",
  descripcion: "Nunca he enviado accidentalmente un mensaje de amor a un miembro de la familia.",
  imaganes: "assets/YoNunca/Nunca_90.png",
  ruta: "",
),

JuegosYoNunca(
  91,
  description: "I have never pretended to like a movie to avoid an argument.",
  descripcion: "Nunca he fingido que me gustó una película para evitar una discusión.",
  imaganes: "assets/YoNunca/Nunca_91.png",
  ruta: "",
),

JuegosYoNunca(
  92,
  description: "I have never accidentally sent a screenshot to the person I screenshotted.",
  descripcion: "Nunca he enviado accidentalmente una captura de pantalla a la persona que capturé.",
  imaganes: "assets/YoNunca/Nunca_92.png",
  ruta: "",
),

JuegosYoNunca(
  93,
  description: "I have never pretended to know a famous quote that I had never heard before.",
  descripcion: "Nunca he fingido conocer una cita famosa que nunca había escuchado antes.",
  imaganes: "assets/YoNunca/Nunca_93.png",
  ruta: "",
),

JuegosYoNunca(
  94,
  description: "I have never accidentally liked an old post while stalking someone on social media.",
  descripcion: "Nunca he dado like accidentalmente a una publicación antigua mientras stalkeaba a alguien en redes sociales.",
  imaganes: "assets/YoNunca/Nunca_94.png",
  ruta: "",
),

JuegosYoNunca(
  95,
  description: "I have never ordered a wrong meal.",
  descripcion: "Nunca he hecho mal el pedido de una comida",
  imaganes: "assets/YoNunca/Nunca_95.png",
  ruta: "",
),

JuegosYoNunca(
  96,
  description: "I have never pretended to like a song to fit in with a group.",
  descripcion: "Nunca he fingido que me gusta una canción para encajar en un grupo.",
  imaganes: "assets/YoNunca/Nunca_96.png",
  ruta: "",
),

JuegosYoNunca(
  97,
  description: "I've never had a fight over a girl or boy",
  descripcion: "Nunca he tenido una pelea por una chica o chico",
  imaganes: "assets/YoNunca/Nunca_97.png",
  ruta: "",
),

JuegosYoNunca(
  98,
  description: "I have never played a musical instrument well.",
  descripcion: "Nunca he tocado un instrumento musica bien",
  imaganes: "assets/YoNunca/Nunca_98.png",
  ruta: "",
),

JuegosYoNunca(
  99,
  description: "I have never purposefully stated my age incorrectly.",
  descripcion: "Nunca he dicho mal mi edad aproposito",
  imaganes: "assets/YoNunca/Nunca_99.png",
  ruta: "",
),

JuegosYoNunca(
  100,
  description: "I have never lied about my occupation to sound more interesting.",
  descripcion: "Nunca he mentido sobre mi ocupación para parecer más interesante.",
  imaganes: "assets/YoNunca/Nunca_100.png",
  ruta: "",
),



];

class JuegosBotella {
  final int position;
  final String description;

  final String descripcion;
  final String imagen;

  JuegosBotella(
    this.position, {
    required this.descripcion,
    required this.description,
    required this.imagen,
  });
}

List<JuegosBotella> juegosBotella = [
  JuegosBotella(
    1,
    description: "Kiss on the cheek, if you don't take a shot",
    descripcion: "Besa en la mejilla, si no toma un shot",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    2,
    description: "A peak in the mouth, if you don't take two shots",
    descripcion: "Un pico en la boca, si no toma dos shots",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    3,
    description: "Give him a lap dance, if he doesn't take two shots.",
    descripcion: "Hazle un baile erótico, si no toma dos shots.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    4,
    description: "Lick the person that came out in the bottle",
    descripcion: "Lamele a la persona que salio en la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    5,
    description: "I never thought that I am the most beautiful person in this group.",
    descripcion: "Pienas que es  la persona más bella de este grupo la que salio en la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    6,
    description: "Getting into the bathroom for a round with the person",
    descripcion: "Meterse en el baño durante una ronda con la persona que salio",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    7,
    description: "See the person's WhatsApp chat for 30 seconds, if it is not allowed, drink 2 shots",
    descripcion:
        "Ver el chat de whatsap por 30 segundo de la persona, si no se deja bebe 2 shots",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    8,
    description: "Call your partner and tell him you're pregnant",
    descripcion:
        "Llamar a la pareja que salio en la botella",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    9,
    description: "Send an emoji to your boss, if he doesn't take a shot",
    descripcion: "Manda un emoji al jefe que salio en la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    0,
    description: "Admit what's the most ridiculous thing you've ever done, if you don't take a shot",
    descripcion:
        "Admite cuál es el mayor ridículo que has hecho nunca, si no toma un shot",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    11,
    description: "Pretend to be the person who spun the bottle for the next 2 rounds of the game, if he doesn't take three shots",
    descripcion:
        "Hazte pasar por la persona que giro la botella durante las siguientes 2 rondas del juego, si no toma tres shots",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    12,
    description: "Show off a hidden talent you have.",
    descripcion: "Demuestra un talento oculto que tengas.",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    13,
    description: "Comment on a Facebook photo of someone you know. Make the comment something spicy.",
    descripcion:
        "Comenta una foto de Facebook de algún conocido. Haz que el comentario sea algo picante.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    14,
    description: "Send a suggestive photo to a WhatsApp contact chosen by the rest of the group.",
    descripcion:
        "Enviar una foto sugerente a algún contacto de WhatsApp que elija el que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    15,
    description: "Drink a shot of tequila from the body part of the person who spun the bottle, if not three shots left.",
    descripcion:
        "Bebe un chupito de tequila de la parte del cuerpo de la persona que giro la botella, si no se deja tres shots.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    16,
    description: "Tell an erotic dream that you have had and that you remember.",
    descripcion: "Cuenta un sueño erótico que hayas tenido y que recuerdes.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    17,
    description: "Admit it: have you ever wanted to be with someone in the group?",
    descripcion:
        "Admítelo: ¿alguna vez has deseado estar con alguna persona del grupo?",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    18,
    description: "Pass an ice cube with another person for a minute until it melts.",
    descripcion:
        "Pásate un cubo de hielo con otra persona durante un minuto hasta que se deshaga.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    19,
    description: "Run your tongue around the neck of someone in the group.",
    descripcion: "Pasa la lengua por el cuello al que giro la botella.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    20,
    description: "Show which is your favorite toy.",
    descripcion: "Muestra cuál es tu juguete preferido.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    21,
    description: "Search the Internet for a strange posture that you don't know and try to imitate it with the objects you have at hand.",
    descripcion:
        "Busca por Internet alguna postura extraña que desconozcas e intenta imitarla con los objetos que tengas a mano.",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    22,
    description: "Whisper something cheeky and suggestive into someone else's ear.",
    descripcion: "Susurra algo atrevido y sugerente al oído de la persona que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    23,
    description: "Be the bottle spinner's pet for the next 5 minutes.",
    descripcion:
        "Sé la mascota del que giro la botella durante los siguientes 5 minutos.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    24,
    description: "Dance to the one who spins the bottle",
    descripcion: "Bailale al que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    25,
    description: "Let the bottle spinner give you a new hairstyle.",
    descripcion: "Deja que el que giro la botella te haga un nuevo peinado.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    26,
    description: "Insult for 20 seconds.",
    descripcion: "Insulta durante 20 segundos al que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    27,
    description: "Dance to a song that the bottle spinner chooses.",
    descripcion: "Baila  una canción con el que giro la botella.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    28,
    description: "Crack an egg over your head.",
    descripcion: "Rompe un huevos sobre tu cabeza del que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    29,
    description: "Put 1 ice cube in your pants.",
    descripcion: "Métete 1 cubo de hielo en los pantalones.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    30,
    description: "If you're a boy, put on makeup. If you're a girl, take off your makeup.",
    descripcion:
        "Si eres un chico, ponte maquillaje. Si eres una chica, quítate el maquillaje.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    31,
    description: "Represents human life through interpretive dance.",
    descripcion: "Representa la vida humana mediante un baile interpretativo.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    32,
    description: "Make everyone here (yes, everyone) smile",
    descripcion: "Haz sonreír a todos los presentes (sí, todos).",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    33,
    description: "Sell someone in the group a piece of junk. Use your best sales skills",
    descripcion:
        "Véndele un pedazo de basura a alguien del grupo. Usa tus mejores habilidades de vendedor, el que giro la botella te califica",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    34,
    description: "Impersonate a celebrity for 1 minute.",
    descripcion: "Imita a un famoso durante 1 minuto.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    35,
    description: "Choose one person and let them slap you across the face.",
    descripcion: "Le debes una bofetada en cualquier parte del cuerpo al que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    36,
    description: "Imitate some YouTube video until someone guesses the name of the video.",
    descripcion:
        "Imita algún video de YouTube hasta que alguien adivine el nombre del video.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    37,
    description: "Post your least flattering photo on a social network of your choice.",
    descripcion:
        "Publica tu fotografía menos favorecedora en alguna red social de tu elección.",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    38,
    description: "Make a funny face and hold it for 2 minutes while the game continues.",
    descripcion:
        "Haz una cara graciosa y mantenla durante 2 minutos mientras el juego continúa.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    39,
    description: "Open a bag or whatever is on hand using only your mouth.",
    descripcion:
        "Abre una bolsa o lo que tenga a la mano usando únicamente tu boca.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    40,
    description: "Act like an animal for 1 minute. Someone must choose the animal for you.",
    descripcion:
        "Actúa como animal durante 1 minuto. Alguien debe elegir el animal por ti.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    41,
    description: "Draw something on the person to your right",
    descripcion:
        "Dibuja algo a la persona que giro la botella",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    42,
    description: "Massage your neighbor's shoulders.",
    descripcion:
        "Masajea los hombros al que giro la botella.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    43,
    description: "Act like an animal for 1 minute. Someone must choose the animal for you.",
    descripcion:
        "Actúa como animal durante 1 minuto. El que giro la botella elije el animal.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    44,
    description: "Dance the Macarena",
    descripcion:
        "Baila la Macarena con el que giro la botella",
    imagen: "assets/Shot2.png",
  ),
  JuegosBotella(
    45,
    description: "Cover your eyes and circle around yourself 10 times and try to walk to the street and come back.",
    descripcion:
        "Tápate los ojos y da 10 vueltas sobre ti mismo e intenta caminar a la calle y vuelve.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    46,
    description: "Stand still for 1 rounds.",
    descripcion:
        "Quédate quieto durante 1 rondas.",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    47,
    description: "You can only talk to the least smart in the party for 1 round.",
    descripcion:
        "Solo puedes hablarle al que giro la botella.",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    48,
    description: "You can't use your hands for two rounds.",
    descripcion:
        "No puedes usar las manos por dos rondas",
    imagen: "assets/Shot1.png",
  ),
  JuegosBotella(
    49,
    description: "Take off a piece of clothing until the game is over",
    descripcion:
        "Quitate una prenda hasta que se acabe el juego",
    imagen: "assets/Shot3.png",
  ),
  JuegosBotella(
    50,
    description: "Imitate your favorite celebrity.",
    descripcion:
        "Imita a tu famoso favorito.",
    imagen: "assets/Shot2.png",
  ),


];
