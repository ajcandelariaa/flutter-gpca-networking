import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/contact_provider.dart';
import 'package:provider/provider.dart';

class ContactDetailScreen extends StatelessWidget {
  const ContactDetailScreen({Key? key}) : super(key: key);

  static const routeName = "/contact-detail";

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List<String>;
    final contact =
        Provider.of<ContactProvider>(context).findById(arg[0], arg[1]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact details"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            
          ),
        ),
      ),
    );
  }
}
