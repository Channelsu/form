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
    return TextFormField(
      decoration: InputDecoration(labelText: '氏名',),
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
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
        child: Form(
          child: Column(
            // 縦を基準として中央に配置
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              // _buildEmail(),
              // _buildPassword(),
              // _buildURL(),
              // _buildPhoneNumber(),
              // _buildCalories(),
              SizedBox(height: 100,),
              RaisedButton(
                child: Text('登録', style: TextStyle(color: Colors.blue, fontSize: 16),),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}