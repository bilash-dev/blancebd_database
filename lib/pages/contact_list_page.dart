
import 'package:contactapp/pages/new_contact_page.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  static const String routeName = '/contact_list';
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Contact List'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, NewContactPage.routeName);
        },
        child: Icon(Icons.add),
        tooltip: 'add new contact',
      ),
    );
  }
}

