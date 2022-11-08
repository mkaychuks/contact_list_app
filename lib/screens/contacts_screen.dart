import 'package:flutter/material.dart';
import 'package:practice_project/models/contacts.dart';
import 'package:practice_project/screens/contact_details.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  List<ContactsModel> contacts = [
    ContactsModel(
        name: 'Ada', address: 'Nottingham Street', bio: 'A dancer', id: 1),
    ContactsModel(
        name: 'Abbie', address: 'Buckingham', bio: 'Flutter Dev', id: 2),
    ContactsModel(
        name: 'Ifeanyi', address: 'Nigeria', bio: 'Confused Dev', id: 3),
    ContactsModel(name: 'Sammie', address: 'Ghana', bio: 'Drummer', id: 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(contacts[index].name),
                  subtitle: Text(contacts[index].address),
                  trailing: Text(contacts[index].bio),
                  tileColor: Colors.amber,
                  onTap: () async {
                    await Future.delayed(
                      const Duration(seconds: 5),
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ContactDetails(contact: contacts[index]),
                          ),
                        );
                      },
                    );
                    print('Future has finished running');
                  },
                ),
                const Divider(
                  height: 10.0,
                  color: Colors.blueAccent,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
