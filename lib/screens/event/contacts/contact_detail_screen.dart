import 'package:flutter/material.dart';
import 'package:gpca_networking/providers/contact_provider.dart';
import 'package:gpca_networking/widgets/contacts/contact_detail_body.dart';
import 'package:gpca_networking/widgets/contacts/contact_detail_footer.dart';
import 'package:gpca_networking/widgets/contacts/contact_detail_header.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactDetailHeader(
              id: contact.id,
              name: contact.name,
              contactType: contact.contactType,
              photo: contact.photo,
            ),
            SizedBox(height: 5,),
            ContactDetailBody(
              id: contact.id,
              emailAddress: contact.emailAddress,
              mobileNumber: contact.mobileNumber,
              landlineNumber: contact.landlineNumber,
              dateAdded: contact.dateAdded,
              timeAdded: contact.timeAdded,
              note: contact.note,
            ),
            SizedBox(height: 5,),
            ContactDetailFooter(
              baseId: contact.baseId,
              eventId: contact.eventId,
              contactType: contact.contactType,
              isActive: contact.isActive,
            ),
          ],
        ),
      ),
    );
  }
}
