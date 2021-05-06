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