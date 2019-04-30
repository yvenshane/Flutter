import 'package:flutter/material.dart';

class FormsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        )
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterFormState createState()=> RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();

  String username, password;

  bool autovalidate = false;

  void submitRegisterForm () {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text('注册中 ..'),
        ),
      );

    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validatorUsername (value) {
    if (value.isEmpty) {
      return '请输入用户名';
    }

    return null;
  }

  String validatorPassword (value) {
    if (value.isEmpty) {
      return '请输入密码';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.deepPurple,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}



class TextFieldDemo extends StatefulWidget {
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    textEditingController.text = 'worinima';
  textEditingController.addListener(
      () {
        debugPrint('input:${textEditingController.text}');
      }
  );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller: textEditingController,
//      onChanged: (value) {
//        debugPrint('input: $value');
//      },
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Titl',
        hintText: '12312312312323',
//        border: InputBorder.none,
//      border: OutlineInputBorder(),
      filled: true,
        fillColor: Colors.blue,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}






