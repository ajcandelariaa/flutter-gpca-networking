import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class CovidGuidelinesScreen extends StatelessWidget {
  const CovidGuidelinesScreen({Key? key}) : super(key: key);
  static const routeName = '/covid-guidelines';
  static const htmlData = """
    <h2>Covid-19 Safety Guidlines</h2>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
      <br><br>
      Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
      <br><br>
      Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
    </p> 
    <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid-19 Safety Guidelines'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Html(
                data: htmlData,
                onLinkTap: (url, context, attributes, element) async {
                  final urlF = Uri.parse(url.toString());
                  if (await canLaunchUrl(urlF)) {
                    await launchUrl(urlF, mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $urlF';
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
