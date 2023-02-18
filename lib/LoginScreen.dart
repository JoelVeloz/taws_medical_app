import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:taws_medical_app/TimeSeriesBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicia sesión"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                child:
                    Image.asset('assets/tawslogo.png', width: 100, height: 100),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.blueAccent,
                onSaved: (email) {},
                decoration: InputDecoration(
                  enabledBorder: new OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  enabled: true,
                  hintText: "Tu correo espol",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.email, color: Colors.blueAccent),
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.blueAccent,
                onSaved: (email) {},
                decoration: InputDecoration(
                  enabledBorder: new OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                    borderRadius: new BorderRadius.circular(25.0),
                  ),
                  enabled: true,
                  hintText: "Tu contraseña",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.password, color: Colors.blueAccent),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // ignore: prefer_const_constructors
                      builder: (context) => TimeSeriesBarScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                      child: Text(
                    'Iniciar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Pantalla que muestra el gráfico de series de tiempo
class TimeSeriesBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráfico de frecuencia cardiaca'),
      ),
      body: Column(
        children: [
          SizedBox(height: 40),
          Text(
            'Que gusto que seas parte de ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            ' TAWS MEDICAL APP :)',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Saludos Joel Veloz',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(30.0),
          //   child: TextFormField(
          //     keyboardType: TextInputType.emailAddress,
          //     textInputAction: TextInputAction.next,
          //     cursorColor: Colors.blueAccent,
          //     onSaved: (email) {},
          //     decoration: InputDecoration(
          //       enabledBorder: new OutlineInputBorder(
          //         borderSide: BorderSide(width: 2, color: Colors.blueAccent),
          //         borderRadius: new BorderRadius.circular(25.0),
          //       ),
          //       enabled: true,
          //       hintText: "Tiempo de lectura",
          //       prefixIcon: Padding(
          //         padding: EdgeInsets.all(10),
          //         child: Icon(Icons.timeline, color: Colors.blueAccent),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 10),
          // Container(
          //   width: 200,
          //   height: 50,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     color: Colors.blueAccent,
          //   ),
          //   child: Center(
          //       child: Text(
          //     'Iniciar lectura',
          //     style: TextStyle(color: Colors.white, fontSize: 20),
          //   )),
          // ),
          Container(
            padding: EdgeInsets.all(20),
            height: 300,
            child: TimeSeriesBar(),
          ),
        ],
      ),
    );
  }
}
