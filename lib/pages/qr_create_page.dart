import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQR extends StatefulWidget {
  CreateQR({Key? key}) : super(key: key);

  @override
  _CreateQR createState() => _CreateQR();
}

class _CreateQR extends State<CreateQR> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              QrImage(
                data: controller.text,
                size: 200,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (_) {
        setState(() {});
      },
    );
  }
}
