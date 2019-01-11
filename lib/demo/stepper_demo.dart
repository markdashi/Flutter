import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepContinue: (){
                  setState(() {
                                 _currentStep < 2? _currentStep+=1:_currentStep =0;     
                                    });
                },
                onStepCancel: (){
                  setState(() {
                                      _currentStep >0? _currentStep-=1:_currentStep=0;
                                    });
                },
                onStepTapped: (int value){
                  setState(() {
                                      _currentStep = value;
                                    });
                },
                steps: <Step>[
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Elit deserunt quis quis id aute amet voluptate fugiat do est laboris tempor nisi ipsum.'),
                    isActive: _currentStep == 0
                  ),
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Elit deserunt quis quis id aute amet voluptate fugiat do est laboris tempor nisi ipsum.'),
                    isActive: _currentStep == 1
                  ),
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login first'),
                    content: Text('Elit deserunt quis quis id aute amet voluptate fugiat do est laboris tempor nisi ipsum.'),
                    isActive: _currentStep == 2
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}