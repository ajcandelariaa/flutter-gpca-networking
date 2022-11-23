import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gpca_networking/providers/sponsor_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorDetailScreen extends StatelessWidget {
  const SponsorDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/sponsor-detail';

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as List<String>;
    final sponsor =
        Provider.of<SponsorProvider>(context).findById(arg[0], arg[1]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sponsor detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '${sponsor.sponsorCategory} sponsor',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Hero(
                  tag: sponsor.id,
                  child: Image.asset(
                    sponsor.logo,
                    height: 200,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 139, 139, 139),
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sponsor.name,
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "${sponsor.sponsorType} sponsor",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF888888),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            sponsor.isFavorite
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(Icons.favorite_border),
                            Text(sponsor.numberOfFavorites.toString()),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.alternate_email,
                          size: 18, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () async {
                          final urlF = Uri.parse(sponsor.website.toString());
                          if (await canLaunchUrl(urlF)) {
                            await launchUrl(urlF,
                                mode: LaunchMode.externalApplication);
                          } else {
                            throw 'Could not launch $urlF';
                          }
                        },
                        child: Text(
                          sponsor.website,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.alternate_email,
                          size: 18, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () async {
                          String email =
                              Uri.encodeComponent(sponsor.emailAddress);
                          final urlF = Uri.parse('mailto:$email');
                          if (await canLaunchUrl(urlF)) {
                            await launchUrl(urlF);
                          } else {
                            throw 'Could not launch $urlF';
                          }
                        },
                        child: Text(
                          sponsor.emailAddress,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_outlined,
                          size: 18, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () async {
                          String number =
                              Uri.encodeComponent(sponsor.contactNumber);
                          final urlF = Uri.parse('tel:$number');
                          if (await canLaunchUrl(urlF)) {
                            await launchUrl(urlF);
                          } else {
                            throw 'Could not launch $urlF';
                          }
                        },
                        child: Text(
                          sponsor.contactNumber,
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 139, 139, 139),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Company Description:',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF888888),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Html(
                    data: sponsor.htmlDescription,
                    onLinkTap: (url, context, attributes, element) async {
                      final urlF = Uri.parse(url.toString());
                      if (await canLaunchUrl(urlF)) {
                        await launchUrl(urlF,
                            mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Could not launch $urlF';
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
