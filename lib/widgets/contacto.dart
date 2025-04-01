import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Contacto extends StatefulWidget {
  const Contacto({super.key});

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  final _formKey = GlobalKey<FormState>();

  final nombreController = TextEditingController();
  final celularController = TextEditingController();
  final correoController = TextEditingController();
  final asuntoController = TextEditingController();
  final mensajeController = TextEditingController();

  bool enviando = false;

  Future<void> enviarFormulario() async {
    if (!_formKey.currentState!.validate()) return;

    const serviceId = 'service_0tzx0aw';
    const templateId = 'template_0acu8r8';
    const publicKey = 'UapUkrGXYrXahZMcZ';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    setState(() => enviando = true);

    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': publicKey,
        'template_params': {
          'name': nombreController.text,
          'email': correoController.text,
          'celular': celularController.text,
          'title': asuntoController.text,
          'message': mensajeController.text,
        }
      }),
    );

    setState(() => enviando = false);

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('✅ ¡Mensaje enviado con éxito!')),
      );
      nombreController.clear();
      celularController.clear();
      correoController.clear();
      asuntoController.clear();
      mensajeController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('❌ Error al enviar: ${response.body}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 800;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 2, child: _buildImageAndEmail()),
        SizedBox(width: 40),
        Expanded(flex: 3, child: _buildContactForm()),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildImageAndEmail(),
        SizedBox(height: 30),
        _buildContactForm(),
      ],
    );
  }

  Widget _buildImageAndEmail() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/contacto.png',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.email, color: Color(0xFF5C5664), size: 24),
            SizedBox(width: 10),
            SelectableText(
              "seguros@perezyeregui.com.ar",
              style: TextStyle(fontSize: 18, color: Color(0xFF5C5664)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContactForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contacto",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF5C5664),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Si desea contactarse con nosotros, por favor complete el siguiente formulario",
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 20),
          _buildFormulario(),
        ],
      ),
    );
  }

  Widget _buildFormulario() {
    return Column(
      children: [
        _buildTextField(
          label: "Tu nombre",
          controller: nombreController,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '❗ Este campo es obligatorio';
            }
            return null;
          },
        ),
        SizedBox(height: 15),
        _buildTextField(
          label: "Tu celular",
          controller: celularController,
          keyboardType: TextInputType.phone,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '❗ Por favor ingresá tu número';
            }
            final pattern = RegExp(r'^[0-9]{8,15}$');
            if (!pattern.hasMatch(value.trim())) {
              return '❗ Ingresá un número de celular válido';
            }
            return null;
          },
        ),
        SizedBox(height: 15),
        _buildTextField(
          label: "Tu correo electrónico",
          controller: correoController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '❗ Este campo es obligatorio';
            }
            final pattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            if (!pattern.hasMatch(value.trim())) {
              return '❗ Ingresá un correo válido';
            }
            return null;
          },
        ),
        SizedBox(height: 15),
        _buildTextField(
          label: "Asunto",
          controller: asuntoController,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '❗ Este campo es obligatorio';
            }
            return null;
          },
        ),
        SizedBox(height: 15),
        _buildTextField(
          label: "Tu mensaje (opcional)",
          controller: mensajeController,
          isLarge: true,
        ),
        SizedBox(height: 20),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    bool isLarge = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: isLarge ? 5 : 1,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        errorStyle: TextStyle(color: Colors.redAccent, fontSize: 14),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: enviando ? null : enviarFormulario,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF5C5664),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          enviando ? "ENVIANDO..." : "ENVIAR",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
