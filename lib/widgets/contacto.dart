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

  setState(() => enviando = true);

  final nombre = nombreController.text.trim();
  final celular = celularController.text.trim();
  final correo = correoController.text.trim();
  final asunto = asuntoController.text.trim();
  final mensaje = mensajeController.text.trim();

  final url = Uri.parse('https://assistify-token-generator-1014.twil.io/send-email');

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'to': correo,
      'subject': '✅ Confirmación de tu consulta a Pérez Yeregui',
      'text': '''
Hola $nombre,
Gracias por contactarte con nosotros. Recibimos tu mensaje:
📝 Mensaje: $mensaje

Pronto nos pondremos en contacto con vos.
Saludos,
Equipo de Pérez Yeregui
''',

    }),
  );

  // También enviar a manunv97@gmail.com
  await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'to': 'seguros@perezyeregui.com.ar',
      'subject': '📩 Nuevo mensaje desde el formulario de contacto',
      
      'text': "📥 Nuevo contacto recibido:\n\n👤 Nombre: $nombre\n📞 Celular: $celular\n📧 Correo: $correo\n📌 Asunto: $asunto\n📝 Mensaje: $mensaje\n" 
,
    }),
  );

  setState(() => enviando = false);

  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("✅ Consulta enviada correctamente."),
        backgroundColor: Colors.green,
      ),
    );
    _formKey.currentState!.reset();
  } else {
    print("Error: ${response.body}");
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("❌ Error al enviar el mensaje. Intentá nuevamente."),
        backgroundColor: Colors.red,
      ),
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
