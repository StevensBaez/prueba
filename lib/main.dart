import 'package:day13/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                    child: FadeAnimation(1.3, Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/letrero1.png'),
                          fit: BoxFit.contain
                        )
                      ),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5,),
                  FadeAnimation(1.7, Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(213, 212, 217, .3),
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(
                              color: Colors.grey[200]
                            ))
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "correo electrónico",
                              hintStyle: TextStyle(color: Colors.black)                            
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "contraseña",
                              hintStyle: TextStyle(color: Colors.black)
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(height: 40,),
                  FadeAnimation(1.9, Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Color.fromRGBO(6, 82, 79, 1),
                    ),
                    child: Center(
                      child: Text("Iniciar Sesión", style: TextStyle(color: Colors.white),),
                    ),
                  )),
                  SizedBox(height: 40,),
                  FadeAnimation(1.7, Center(child: Text("¿Olvidó su contraseña?", style: TextStyle(color: Color.fromRGBO(1, 1, 1, 1)),))),
                  SizedBox(height: 100,),
                  FadeAnimation(1.7, Center(child: Text("¿No tienes una cuenta?", style: TextStyle(color: Color.fromRGBO(1, 1, 1, 1)),))),
                  SizedBox(height: 40,),
                  FadeAnimation(1.9, Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Color.fromRGBO(6, 82, 79, 1),
                    ),
                    child: Center(
                      child: Text("Crear Cuenta", style: TextStyle(color: Colors.white),),
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
