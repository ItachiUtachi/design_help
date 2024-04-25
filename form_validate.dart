
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Form Validation Demo";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter Your Name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter Your Phone No.',
              labelText: 'Phone No.',
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value.length != 10) {
                return 'Please enter a valid phone no.';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter Your DOB',
              labelText: 'DOB',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your dob';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}





// FORM BUILDER -

// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Form Validation Demo';

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: appTitle,
//       localizationsDelegates: const [
//         FormBuilderLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: const [
//         Locale('en', ''),
//         Locale('es', ''),
//         Locale('fa', ''),
//         Locale('fr', ''),
//         Locale('ja', ''),
//         Locale('pt', ''),
//         Locale('sk', ''),
//         Locale('pl', ''),
//       ],
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//           backgroundColor: Colors.deepOrangeAccent,
//           titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
//           centerTitle: true,
//         ),
//         body: const MyCustomForm(),
//       ),
//     );
//   }
// }

// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({Key? key}) : super(key: key);

//   @override
//   MyCustomFormState createState() => MyCustomFormState();
// }

// class MyCustomFormState extends State<MyCustomForm> {
//   final _formKey = GlobalKey<FormBuilderState>();

//   var genderOptions = ['Male', 'Female', 'Others'];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         FormBuilder(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               FormBuilderFilterChip(
//                 name: 'filter_chip',
//                 decoration: const InputDecoration(labelText: "Select many options"),
//                 options: const [
//                   FormBuilderChipOption(value: 'Test 1', child: Text('Test 1')),
//                   FormBuilderChipOption(value: 'Test 2', child: Text('Test 2')),
//                 ],
//               ),
//               FormBuilderChoiceChip(
//                 name: 'choice_chip',
//                 decoration: const InputDecoration(labelText: 'Select an option'),
//                 options: const [
//                   FormBuilderChipOption(value: 'Test 1', child: Text('Test 1')),
//                   FormBuilderChipOption(value: 'Test 2', child: Text('Test 2')),
//                 ],
//               ),
//               FormBuilderDateTimePicker(
//                 name: 'date',
//                 inputType: InputType.time,
//                 decoration: const InputDecoration(labelText: 'Appointment Time'),
//                 initialTime: const TimeOfDay(hour: 8, minute: 0),
//               ),
//               FormBuilderDateRangePicker(
//                 name: 'date_range',
//                 firstDate: DateTime(1970),
//                 lastDate: DateTime(2030),
//                 decoration: const InputDecoration(
//                   labelText: 'Date Range',
//                   helperText: 'Helper text',
//                   hintText: 'Hint text',
//                 ),
//               ),
//               FormBuilderSlider(
//                 name: 'slider',
//                 validator: FormBuilderValidators.compose([FormBuilderValidators.min(6)]),
//                 min: 0.0,
//                 max: 10.0,
//                 initialValue: 7.0,
//                 divisions: 20,
//                 activeColor: Color.fromARGB(255, 24, 86, 18),
//                 inactiveColor: Color.fromARGB(255, 166, 225, 163),
//                 decoration: const InputDecoration(labelText: 'Number of things'),
//               ),
//               FormBuilderCheckbox(
//                 name: 'accept_terms',
//                 initialValue: false,
//                 title:  RichText(
//                   text: TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'I have read and agree to the ',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       TextSpan(
//                         text: 'Terms and Conditions',
//                         style: TextStyle(color: Colors.blue),
//                       ),
//                     ],
//                   ),
//                 ),
//                 validator: FormBuilderValidators.equal(true, errorText: 'You must accept terms and conditions to continue'),
//               ),
//               FormBuilderTextField(
//                 name: 'age',
//                 decoration: const InputDecoration(
//                   labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
//                 ),
//                 validator: FormBuilderValidators.compose([
//                   FormBuilderValidators.required(),
//                   FormBuilderValidators.numeric(),
//                   FormBuilderValidators.max(70),
//                 ]),
//                 keyboardType: TextInputType.number,
//               ),
//               FormBuilderDropdown(
//                 name: 'gender',
//                 decoration: const InputDecoration(labelText: 'Gender'),
//                 validator: FormBuilderValidators.compose([FormBuilderValidators.required()]),
//                 items: genderOptions.map((gender) => DropdownMenuItem(value: gender, child: Text(gender))).toList(),
//               ),
//             ],
//           ),
//         ),
//         Row(
//           children: <Widget>[
//             Expanded(
//               child: MaterialButton(
//                 color: Theme.of(context).colorScheme.secondary,
//                 child: const Text(
//                   "Submit",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () {
//                   _formKey.currentState?.save();
//                   bool? isValid = _formKey.currentState?.validate();
//                   if (isValid == true) {
//                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Incorrect Data')));
//                   }
//                 },
//               ),
//             ),
//             const SizedBox(width: 20),
//             Expanded(
//               child: MaterialButton(
//                 color: Theme.of(context).colorScheme.secondary,
//                 child: const Text(
//                   "Reset",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 onPressed: () {
//                   _formKey.currentState?.reset();
//                 },
//               ),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
