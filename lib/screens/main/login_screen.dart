import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gpca_networking/providers/event_provider.dart';
import 'package:gpca_networking/providers/theme_provider.dart';
import 'package:gpca_networking/widgets/login_form.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  _onBackButtonPress(ctx) {
    Provider.of<ThemeProvider>(ctx, listen: false).toggleThemeData('main');
    Navigator.of(ctx).pop();
  }

  @override
  Widget build(BuildContext context) {
    print('This is login_screen');
    final eventId = ModalRoute.of(context)!.settings.arguments as String;
    final eventData =
        Provider.of<EventProvider>(context, listen: false).findById(eventId);

    return WillPopScope(
      onWillPop: () => _onBackButtonPress(context) ?? false,
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => _onBackButtonPress(context),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          spreadRadius: -1.0,
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: const LoginForm(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Html(
                      data: eventData.loginHTMLData,
                      onLinkTap: (url, context, attributes, element) async {
                        var urlF = Uri.parse(url.toString());
                        if (await canLaunchUrl(urlF)) {
                          await launchUrl(urlF,
                              mode: LaunchMode.externalApplication);
                        } else {
                          String urlEncoded = Uri.encodeComponent(url.toString());
                          urlF = Uri.parse('mailto:$urlEncoded');
                          if (await canLaunchUrl(urlF)) {
                            await launchUrl(urlF);
                          } else {
                            String urlEncoded = Uri.encodeComponent(url.toString());
                            urlF = Uri.parse('tel:$urlEncoded');
                            if (await canLaunchUrl(urlF)) {
                              await launchUrl(urlF);
                            } else {
                              throw 'Could not launch $urlF';
                            }
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
