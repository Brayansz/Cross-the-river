import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const Widget1());
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Widget fondo(String fondo) {
  return Stack(
    children: [
      Image.asset(
        fondo,
      ),
    ],
  );
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class imagenes extends StatefulWidget {
  imagenes(this.persona, this.n1, this.n2, this.nombre, this.n11, this.n22,
      this.cont);
  double n1 = 0;
  double n2 = 0;
  double n11 = 0;
  double n22 = 0;
  int cont = 0;
  String persona = "";
  String nombre = "";

  @override
  _imagenesState createState() => _imagenesState();
}

class _imagenesState extends State<imagenes> {
  void actualizarPosiciones(double nuevaN1, double nuevaN2) {
    setState(() {
      widget.n1 = nuevaN1;
      widget.n2 = nuevaN2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: widget.n1,
                top: 200.0,
                right: widget.n2,
                bottom: 80.0,
                child: Image.asset(widget.persona),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: widget.n11, left: widget.n22),
          child: ElevatedButton(
            onPressed: () {
              actualizarPosiciones(widget.n2, widget.n1);
              widget.cont = widget.cont + 1;
            },
            child: Text(widget.nombre),
          ),
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Widget1 extends StatelessWidget {
  const Widget1({super.key});
  @override
  Widget build(BuildContext context) {
    imagenes oveja =
        imagenes("assets/oveja.png", 0.0, 280.0, "oveja", 10.0, 230.0, 0);
    imagenes lechuga =
        imagenes("assets/lechuga.png", 0.0, 280.0, "lechuga", 210.0, 0.0, 0);
    imagenes lobo =
        imagenes("assets/lobo.png", 0.0, 280.0, "lobo", 70.0, 80.0, 0);

    bool nivel11 = false;
    bool nivel22 = false;
    bool nivel33 = false;
    bool nivel44 = false;

    void nivel1() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (oveja.cont == 1) {
            nivel11 = true;
            return AlertDialog(
              title: Text('¡Excelente!'),
              content: Text('Pasaste la parte 1'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Perdiste'),
              content: Text(
                  'El lobo se comió la oveja o la oveja se comió la lechuga'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
        },
      );
    }

    void nivel2() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (lechuga.cont == 1) {
            nivel22 = true;
            return AlertDialog(
              title: Text('¡Excelente!'),
              content: Text('Pasaste la parte 2'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Perdiste'),
              content: Text('El lobo se comió la oveja'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
        },
      );
    }

    ;

    void nivel3() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (oveja.cont == 2) {
            nivel33 = true;
            return AlertDialog(
              title: Text('¡Excelente!'),
              content: Text('Pasaste la parte 3'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Perdiste'),
              content: Text(
                  'El lobo se comió la oveja o la oveja se comió la lechuga'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
        },
      );
    }

    void nivel4() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (lobo.cont == 1) {
            nivel44 = true;
            return AlertDialog(
              title: Text('¡Excelente!'),
              content: Text('Pasaste la parte 4'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Perdiste'),
              content: Text(
                  'El lobo se comió la oveja o la oveja se comió la lechuga'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
        },
      );
    }

    void nivel5() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          if (oveja.cont == 3) {
            return AlertDialog(
              title: Text('¡Excelente!'),
              content: Text('GANASTE'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          } else {
            return AlertDialog(
              title: Text('Perdiste'),
              content: Text(
                  'El lobo se comió la oveja o la oveja se comió la lechuga'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          }
        },
      );
    }

    void juego() {
      if (nivel11 == false) {
        nivel1();
      } else if (nivel22 == false) {
        nivel2();
      } else if (nivel33 == false) {
        nivel3();
      } else if (nivel44 == false) {
        nivel4();
      } else {
        nivel5();
      }
    }




    return Scaffold(
      appBar: AppBar(
        title: const Text("Brayan"),
      ),

      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [

                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://img.freepik.com/vector-premium/rio-atravesando-horizonte-paisaje-otonal-orientacion-vertical_198696-450.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  left: 100.0,
                  top: 160.0,
                  right: 100.0,
                  child: fondo("assets/canoa.png")
                ),
                Positioned(
                    left: 150.0,
                    top: 130.0,
                    right: 100.0,
                    child: fondo("assets/persona.png")
                ),
                oveja,
                lechuga,
                lobo,
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              juego();
            },
            child: Text("Verificar"),
          ),
        ],
      ),
    );
  }
}
