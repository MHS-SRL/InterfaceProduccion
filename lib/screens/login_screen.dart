import 'package:flutter/material.dart';
import 'package:aplication_1/widgets/input_decoration.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            _cajaPurpura(size),
            _iconoPersona(),
            _loginForm(context)
          ],
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 250),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 30),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: InputDecorations.inputDecoration(
                          hintext: 'example@gmail.com',
                          labeltext: 'Correo Electronico',
                          icono: const Icon(Icons.alternate_email_rounded),
                        ),
                        validator: (value) {
                          String pattern =
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                          RegExp regExp = RegExp(pattern);
                          return regExp.hasMatch(value ?? '')
                              ? null
                              : 'Ingrese un correo válido';
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        decoration: InputDecorations.inputDecoration(
                          hintext: '********',
                          labeltext: 'Contraseña',
                          icono: const Icon(Icons.lock_outlined),
                        ),
                        validator: (value) {
                          return (value != null && value.length >= 8)
                              ? null
                              : 'La contraseña debe tener 8 o más caracteres';
                        },
                      ),
                      const SizedBox(height: 30),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledColor: Colors.grey,
                        color: Colors.orange.shade600,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 15),
                          child: const Text(
                            'Ingresar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'home');
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Crear una nueva cuenta',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconoPersona() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 15),
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 150,
        ),
      ),
    );
  }

  Widget _cajaPurpura(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 243, 156, 18),
            Color.fromARGB(255, 211, 84, 0),
          ],
        ),
      ),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: _burbuja(), top: 90, left: 30),
          Positioned(child: _burbuja(), top: -40, left: -30),
          Positioned(child: _burbuja(), top: 50, left: 275),
          Positioned(child: _burbuja(), top: -50, right: -20),
          Positioned(child: _burbuja(), bottom: 15, left: 200),
          Positioned(child: _burbuja(), bottom: -50, left: 10),
          Positioned(child: _burbuja(), bottom: 120, right: 30),
          Positioned(child: _burbuja(), bottom: 70, left: 425),
          Positioned(child: _burbuja(), bottom: -10, right: 10),
          Positioned(child: _burbuja(), top: 50, right: 425),
          Positioned(child: _burbuja(), top: 5, right: 200),
          Positioned(child: _burbuja(), bottom: 15, right: 250),
        ],
      ),
    );
  }

  Widget _burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
