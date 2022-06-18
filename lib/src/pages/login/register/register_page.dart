import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterPage extends StatelessWidget {

  RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      //El Stack se usa para posicionar elementos uno arriba de otros
      children: [
        _backgroundCoverFondo(context),
        _boxForm(context),
        _imageUser(),
        _buttonBack(),
      ],
    ));
  }

  Widget _backgroundCoverFondo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.deepPurple],
              stops: [0.1, 0.9],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft)),
    );
  }

  Widget _buttonBack() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      child: SafeArea(
          child: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_rounded),
        color: Colors.white,
        iconSize: 35,
      )),
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.3, left: 40, right: 40),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black54, blurRadius: 15, offset: Offset(0, 0.75))
          ]),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfo(),
            _textFieldEmail(),
            _textFieldName(),
            _textFieldLastName(),
            _textFieldPhone(),
            _textFieldPassword(),
            _textFieldConfirmPassword(),
            _buttonRegister(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      child:  TextField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              hintText: 'Correo electronico',
              prefixIcon: Icon(Icons.email_rounded))),
    );
  }

  Widget _textFieldName() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 34),
        child: TextField(
          controller: controller.nameController,
            keyboardType: TextInputType.text,
            decoration:const InputDecoration(
                hintText: 'Nombre', prefixIcon: Icon(Icons.person))));
  }

  Widget _textFieldLastName() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 34),
        child:  TextField(
          controller: controller.lastNameController,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                hintText: 'Apellido', prefixIcon: Icon(Icons.person))));
  }

  Widget _textFieldPhone() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 34),
        child:  TextField(
          controller: controller.phoneController,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
                hintText: 'Telefono', prefixIcon: Icon(Icons.phone))));
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 34),
      child: TextField(
        controller: controller.passwordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Contraseña', prefixIcon: Icon(Icons.lock_rounded))),
    );
  }

  Widget _textFieldConfirmPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 29),
      child: TextField(
        controller: controller.confirmPasswordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Confirmar Contraseña',
              prefixIcon: Icon(Icons.lock_rounded))),
    );
  }

  Widget _imageUser() {
    return SafeArea(
      child: Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 35),
          child: GestureDetector(
            onTap: () {},
            child: const CircleAvatar(
                backgroundImage: AssetImage('assets/img/logoUser.png'),
                radius: 60,
                backgroundColor: Colors.white),
          )),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 40, bottom: 20),
      child: const Text('INGRESA ESTA INFORMACION',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 15,
          )),
    );
  }

  //Button del Login
  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: ElevatedButton(
          onPressed: () => controller.register(),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: const Text(
            'REGISTRARSE',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
    );
  }
}
