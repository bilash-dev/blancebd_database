import 'package:contactapp/db/sqflite_helper.dart';
import 'package:contactapp/model/contact_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NewContactPage extends StatefulWidget {
  static const String routeName = '/new_contact';

  @override
  _NewContactPageState createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
   final _depositController = TextEditingController();
   final _withdrawController = TextEditingController();
   final _currentBalanceController = TextEditingController();
   final _depositCompleteController = TextEditingController();
   final _formKey = GlobalKey<FormState>();

   @override
  void dispose() {
    _depositController.dispose();
    _withdrawController.dispose();
    _currentBalanceController.dispose();
    _depositCompleteController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('blancedbd'),
        actions: [
          IconButton(onPressed: _saveContact, icon: Icon(Icons.done))
        ],
      ),
       body: Form(
         key: _formKey,
         child: ListView(
           padding: const EdgeInsets.all(10.0),
           children: [
              TextFormField(
                controller: _depositController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Amount',
                  //labelText: '',
                  prefixIcon: Icon(Icons.money),
                ),
                validator: (value){
                  if(value == null || value.isEmpty) {
                    return 'Please Enter Amount';
                  }
                 return null;
                },
              ),
             SizedBox(height: 10,),
             TextFormField(
               controller: _withdrawController,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: 'Withdraw Amount',
                 //labelText: '',
                 prefixIcon: Icon(Icons.money),
               ),
               validator: (value){
                 if(value == null || value.isEmpty) {
                   return 'Please Enter Amount';
                 }
                 return null;
               },
             ),
             SizedBox(height: 10,),
             TextFormField(
               controller: _currentBalanceController,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 //labelText: 'Current Balance',
                 hintText: 'Current Balance',
                 prefixIcon: Icon(Icons.money),
               ),
               validator: (value){
                 if(value == null || value.isEmpty) {
                   return 'Please Enter Amount';
                 }
                 return null;
               },
             ),
             SizedBox(height: 10,),
             TextFormField(
               controller: _depositCompleteController,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 hintText: 'Deposit Complete',
                 //labelText: '',
                 prefixIcon: Icon(Icons.money),
                 border: OutlineInputBorder(),
               ),
               validator: (value){
                 if(value == null || value.isEmpty) {
                   return 'Please Enter Amount';
                 }
                 return null;
               },
             ),
             SizedBox(height: 10,),

           ],
         ),
       ),
    );
  }


  void _saveContact() {
   if(_formKey.currentState!.validate()) {
     final contact = ContactModel(
     deposit: _depositController.text,
    withdraw: _withdrawController.text,
    currentBalance: _currentBalanceController.text,
    depositComplete: _depositCompleteController.text,
    );
     print(contact);
     DBHelper.insertContact(contact)
         .then((rowId) => Navigator.pop(context));
   }
  }
}
