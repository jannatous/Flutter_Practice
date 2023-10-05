import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _fieldOneREController = TextEditingController();
  TextEditingController _fieldTwoREController = TextEditingController();
  TextEditingController _fieldThreeREController = TextEditingController();
  GlobalKey<FormState> _forkey = GlobalKey<FormState>();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Sum Calculator'), //value change hobe na tai const diye dibo

      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _forkey,
          child: Column(
            children: [
              TextFormField(
                controller: _fieldOneREController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Field 1'
                ),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Error valid value';
                  }
                  return null;
                },
              ),


              TextFormField(
                controller: _fieldTwoREController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    hintText: 'Field 2'
                ),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Error valid value';
                  }
                  return null;
                },
              ),


              // TextFormField(
              //  controller: _fieldThreeREController,
              //    keyboardType: TextInputType.number,
              //   textInputAction: TextInputAction.next,
              //   decoration:const InputDecoration(
              //       hintText: 'Field 3'
              //  ),
              // validator:(String? value){
              //   if (value?.isEmpty?? true){
              //   return 'Error valid value';
              // }
              //  return null;
              //  },
              // ),


              const SizedBox(height: 20,),
              //buttonbar ar text field er maje  space dewa hoise

              ButtonBar(
                alignment: MainAxisAlignment.center,
                //button ta alignment use kore center diye majkhne anlam
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_forkey.currentState!.validate()) {
                        double firstNumber =parseToDouble(
                            _fieldOneREController.text.trim());
                        double secondNumber =parseToDouble(
                            _fieldTwoREController.text.trim());
                        // double thirdNumber = double.parse(_fieldThreeREController.text.trim());
                        // print(firstNumber);
                        // print(secondNumber);
                        // print(thirdNumber);
                        result = addition(firstNumber, secondNumber);
                        setState(() {

                        });
                      }
                    },
                    icon: Icon(Icons.add),
                    label: Text('Add'),),


                ],
              ),

              ElevatedButton.icon(
                onPressed: () {
                  if (_forkey.currentState!.validate()) {
                    double firstNumber = parseToDouble(
                        _fieldOneREController.text.trim());
                    double secondNumber = parseToDouble(
                        _fieldTwoREController.text.trim());
                    // double thirdNumber = double.parse(_fieldThreeREController.text.trim());
                    // print(firstNumber);
                    //  print(secondNumber);
                    // print(thirdNumber);
                    result = sub(firstNumber, secondNumber);
                    setState(() {

                    });
                  }
                },
                icon: const Icon(Icons.remove),
                label: Text('sub'),),


              ElevatedButton.icon(
                onPressed: () {
                  if (_forkey.currentState!.validate()) {
                    double firstNumber = parseToDouble(
                        _fieldOneREController.text.trim());
                    double secondNumber = parseToDouble(
                        _fieldTwoREController.text.trim());
                    result = mul(firstNumber, secondNumber);
                    setState(() {

                    });
                  }
                },
                icon: const Icon(Icons.add),
                label: Text('mul'),),

              ElevatedButton.icon(
                onPressed: () {
                  if (_forkey.currentState!.validate()) {
                    double firstNumber = parseToDouble(
                        _fieldOneREController.text.trim());
                    double secondNumber = parseToDouble(
                        _fieldTwoREController.text.trim());
                    result = div(firstNumber, secondNumber);
                    setState(() {

                    });
                  }
                },
                icon: const Icon(Icons.remove),
                label: Text('div'),),


              ElevatedButton.icon(
                onPressed: () {
                  if (_forkey.currentState!.validate()) {
                    double firstNumber = parseToDouble(
                        _fieldOneREController.text.trim());
                    double secondNumber = parseToDouble(
                        _fieldTwoREController.text.trim());
                    result = mod(firstNumber, secondNumber);
                    setState(() {

                    });
                  }
                },
                icon: const Icon(Icons.remove),
                label: Text('mod'),),




              Text('Result is :$result', style: TextStyle(
                fontSize: 18,
              ),)
            ],
          ),
        ),
      ),
    );
  }

  double parseToDouble(String Text) {
    return double.tryParse(Text) ?? 0;
  }

  double addition(double firstNum, double secondNum) {
    return firstNum + secondNum;
  }

  double sub(double firstNum, double secondNum) {
    return firstNum - secondNum;
  }
  double mul(double firstNum, double secondNum) {
    return firstNum * secondNum;
  }
  double div(double firstNum, double secondNum) {
    return firstNum / secondNum;
  }
  double mod(double firstNum, double secondNum) {
    return firstNum % secondNum;
  }
}