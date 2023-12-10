import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "first_name": "Tanjiro",
      "last_name": "Kamado",
      "email": "tanjiro@gooogle.com",
      "password": "123456",
      "role": "Admin"
    };

    return Scaffold(
      appBar: AppBar(
          title: const Text("Inputs y forms",
              style: TextStyle(color: Colors.black87))),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            customInputField(
              labelText: "Nombre",
              hinText: "Nombre del usuario",
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(height: 30),
            customInputField(
              labelText: "Apellido",
              hinText: "Apellido del usuario",
              formProperty: 'last_name',
              formValues: formValues,
            ),
            const SizedBox(height: 30),
            customInputField(
              labelText: "Correo",
              hinText: "Correo del usuario",
              keyboarType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(height: 30),
            customInputField(
              labelText: "Contraseña",
              hinText: "Contraseña del usuario",
              obscureText: true,
              formProperty: 'password',
              formValues: formValues,
            ),
            const SizedBox(height: 30),
            DropdownButtonFormField<String>(
              items: const [
                DropdownMenuItem(value: "Admin", child: Text("Admin")),
                DropdownMenuItem(value: "SuperUser", child: Text("SuperUser")),
                DropdownMenuItem(value: "Developer", child: Text("Developer")),
                DropdownMenuItem(
                    value: "JuniorDeveloper", child: Text("JuniorDeveloper")),
              ],
              onChanged: (value) {
                print(value);
                formValues["role"] = value ?? "Admin";
              },
            ),
            ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text("Guardar")),
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print("Formulario no válido");
                    return;
                  }
                  print(formValues);
                })
          ]),
        ),
      )),
    );
  }
}

class customInputField extends StatelessWidget {
  final String? hinText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboarType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const customInputField({
    Key? key,
    this.hinText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboarType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false, //La opción true mantine activo el Form
      initialValue: "",
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      keyboardType: keyboarType,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? " Mínimo de 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hinText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
//Habnilitado en el ThemeScreen

        //  focusedBorder: OutlineInputBorder(
        //     borderSide: BorderSide(color: Colors.green)),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //       topRight: Radius.circular(10)),
        //),
      ),
    );
  }
}
