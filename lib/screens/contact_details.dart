import 'package:flutter/material.dart';
import 'package:practice_project/models/contacts.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key, required this.contact});

  final ContactsModel contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0),
        child: Center(
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.address),
            trailing: Text(contact.bio),
            tileColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}
