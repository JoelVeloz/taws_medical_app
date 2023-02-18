import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registra una cuenta"),
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
                  hintText: "Tus nombres",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.person, color: Colors.blueAccent),
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
                  hintText: "Tus apellidos",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.person, color: Colors.blueAccent),
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
                  hintText: "Edad",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.person, color: Colors.blueAccent),
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
                  hintText: "Peso (kg)",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.line_weight, color: Colors.blueAccent),
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
                  hintText: "Nombre de usuario",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.verified_user, color: Colors.blueAccent),
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
                  Navigator.pop(context);
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
                    'Crear cuenta',
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
