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
      maxLength: 10,
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'メール',),
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
        if(!RegExp(
          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
          .hasMatch(value)) {
          return '正しくメールアドレスを入力して下さい';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'パスワード',),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'URL'),
      keyboardType: TextInputType.url,
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: '電話番号'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if(value.isEmpty) {
          return '必須入力です';
        }
        return null;
      },
      onSaved: (String value) {
        _url = value;
      },
    );
  }

  Widget _buildCalories() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Calories'),
      keyboardType: TextInputType.number,
      validator: (String value) {

        int calories = int.tryParse(value);

        if(calories == null || calories <= 0) {
          return '0以上の数字を入力して下さい';
        }
        return null;
      },
      onSaved: (String value) {
        _calories = value;
      },
    );
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
          key: _formKey,
          child: Column(
            // 縦を基準として中央に配置
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildEmail(),
              _buildPassword(),
              _buildURL(),
              _buildPhoneNumber(),
              _buildCalories(),
              SizedBox(height: 100,),
              SizedBox(
                // ボタンの大きさを変えるにはSizedBoxで囲んでwidth/heightをつける
                width: 100,
                height: 50,
                child: ElevatedButton(
                  child: Text('登録', style: TextStyle(fontSize: 20),),
                  onPressed: () {
                    if(!_formKey.currentState.validate()) {
                      return;
                    }
                    _formKey.currentState.save();
                    print(_name);
                    print(_email);
                    print(_phoneNumber);
                    print(_url);
                    print(_password);
                    print(_calories);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}