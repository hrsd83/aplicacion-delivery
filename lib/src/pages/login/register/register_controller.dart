import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastName = lastNameController.text;
    String phone = phoneController.text;
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print('Email $email');
    print('Password $email');

    if (isValidForm(email, name, lastName, phone, password, confirmPassword)) {
      Get.snackbar('Formulario Valido', 'Estas listo para enviar la peticion HTTP');
    }
  }

//VALIDACION
  bool isValidForm(
    String email, 
    String name, 
    String lastName, 
    String phone,
    String password, 
    String confirmPassword,
    ){

    if (email.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el email');
      return false;
    }
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario no valido', 'El email no es valido');
      return false;
    }
    if (name.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar tu nombre');
      return false;
    }

    if (lastName.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar tu apellido');
      return false;
    }

    if (phone.isEmpty) {
      Get.snackbar(
          'Formulario no valido', 'Debes ingresar tu numero de teléfono');
      return false;
    }
    if (password.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar el password');
      return false;
    }
    if (confirmPassword.isEmpty) {
      Get.snackbar('Formulario no valido', 'Debes ingresar la confirmacion del password');
      return false;
    }
      if (password != confirmPassword) {
        Get.snackbar('Formulario no valido', 'los password no coinciden');
        return false;
      }
      return true ;
      
    }
  
  }

