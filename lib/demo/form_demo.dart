import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Theme(
        data: ThemeData(

        ),
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterFormDemo()
            ],
          ),
        ),
      ),
      // body: Theme(
      //   data: Theme.of(context).copyWith(
      //     primaryColor: Colors.black,
      //     accentColor: Colors.yellow
      //   ),
      //   child: ThemeDemo(),
      // ),
      // body: Theme(
      //   data: ThemeData(
      //     primaryColor: Colors.cyan
      //   ),
      //   child: ThemeDemo(),
      // ),
    ),
    );
  }
}


class RegisterFormDemo extends StatefulWidget {
  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegister() {
    if(registerFormKey.currentState.validate()) {
          registerFormKey.currentState.save();
          debugPrint('username - $username password - $password');
    } else {
        setState(() {
                  autovalidate = true;
                });
    }

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Register....'),
      )
    );

      
      
      
  }

  String usernameValidate(value) {
    if(value.isEmpty){
      return 'please enter username';
    }
    return null;
  }
  String passwordValidate(value) {
    if(value.isEmpty) {
      return 'please enter password';
    }
    return null;
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(0.0),
              )
            ),
            validator: usernameValidate,
            autovalidate: autovalidate,
            onSaved: (value){
              username = value;
            },
          ),
          TextFormField(
            obscureText: autovalidate,
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            onSaved: (value){
              password = value;
            },
            validator: passwordValidate,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: submitRegister,
              child: Text('Register'),
              elevation: 0.0,
              color: Theme.of(context).accentColor,
            ),
          )
        ],
      ),
    );
  }
}



class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
    void initState() {
      super.initState();
      // textEditingController.text = 'hi';
      textEditingController.addListener(
        (){
          debugPrint('input ${textEditingController.text}');
        }
      );
    }
    @override
      void dispose() {
        textEditingController.dispose();
        super.dispose();
      }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint('onChanged: $value');
      // },
      onSubmitted: (value){
        debugPrint('onSubmitted: ${value}');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        // labelText: 'Title',
        hintText: 'Enter the post Title',
        // border: InputBorder.none
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.red
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}