import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          child: _noTengoCuenta(),
        ),
        body: Stack(
          //El Stack se usa para posicionar elementos uno arriba de otros
          children: [
            _backgroundCoverFondo(context),
            _boxForm(context),
            Column(
              //Posicionar elementos uno abajo de otros
              children: [
                _imageCover(),
                _textAppName(),
              ],
            )
          ],
        ));
  }

  //Fondo de aplicacion
  Widget _backgroundCoverFondo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.deepPurple],
              stops: [0.1, 0.9],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft)),
    );
  }

  //Texto Principal de aplicacion
  Widget _textAppName() {
    return Container(
      child: const Text(
        'App Delivery',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.35, left: 50, right: 50),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
          ]),
      child: SingleChildScrollView(
        child: Column(children: [
          _textYourInfo(),
          _textFielEmail(),
          _textFielPassword(),
          _buttonLogin(),
        ]),
      ),
    );
  }

  //Caja para el email
  Widget _textFielEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      child: const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Correo electronico',
              prefixIcon: Icon(Icons.email_rounded))),
    );
  }

  Widget _textFielPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      child: const TextField(
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Contraseña', prefixIcon: Icon(Icons.lock_rounded))),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 45),
      child: const Text('INGRESA ESTA INFORMACION',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 15,
          )),
    );
  }

  //Button del Login
  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
    );
  }

  Widget _noTengoCuenta() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'No tienes cuenta?',
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(width: 50),
        Text(
          'Registrate aqui',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        )
      ],
    );
  }

  //Imagen principal de aplicacion
  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/img_principal2.jpg',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
