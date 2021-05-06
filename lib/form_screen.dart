import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return null;
  }

  Widget _buildEmail() {
    return null;
  }

  Widget _buildPassword() {
    return null;
  }

  Widget _buildURL() {
    return null;
  }

  Widget _buildPhoneNumber() {
    return null;
  }

  Widget _buildCalories() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フォームサンプル'),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
      ),
    );
  }
}