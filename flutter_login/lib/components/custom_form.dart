import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_field.dart';
import 'package:flutter_login/size.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  CustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const CustomTextFormField(text: 'Email'),
          const SizedBox(height: midium_gap),
          const CustomTextFormField(text: 'Password'),
          const SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/home');
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
