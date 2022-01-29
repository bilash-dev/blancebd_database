import 'package:contactapp/pages/contact_details_page.dart';
import 'package:contactapp/pages/contact_list_page.dart';
import 'package:contactapp/pages/new_contact_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactListPage(),
      routes: {
        ContactListPage.routeName : (context) => ContactListPage(),
        ContactDetailsPage.routeName : (context) => ContactDetailsPage(),
        NewContactPage.routeName : (context) => NewContactPage(),

      },
    );
  }
}


