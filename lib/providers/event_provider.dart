import 'package:flutter/material.dart';
import 'package:gpca_networking/constants/api_constants.dart';
import 'package:gpca_networking/models/event_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EventProvider with ChangeNotifier {
  final List<EventModel> _events = [
    EventModel(
      id: '1',
      name: 'Supply Chain Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1 2',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
    EventModel(
      id: '2',
      name: 'Plastics Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
    EventModel(
      id: '3',
      name: 'Agri-Nutrients Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="mailto:forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
    EventModel(
      id: '4',
      name: 'Research & Innovation Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
    EventModel(
      id: '5',
      name: 'Responsible Care Conference',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
    EventModel(
      id: '6',
      name: 'GPCA Annual Forum',
      date: "17-19 May, 2022",
      venue: 'Place 1',
      logo: 'assets/images/sc.png',
      logoInverted: 'assets/images/sc.png',
      htmlLoginText: """ 
      <p>Welcome to the GPCA Networking app. Get exclusive access to this app offered to all registered delegates of GPCA events.</p> 
      <p>To access this app, please use the login credentials sent to your registered email addess.</p>
      <p>If you have not yet registered, please email at <a href="forumregistration@gpca.org.ae">forumregistration@gpca.org.ae</a>.</p>
      <p>Learn more by visiting <a href="https://www.gpca.org.ae/">www.gpca.org.ae</a>.</p>
      """,
      htmlAboutText: """
        <img src="https://gpca-mini-forum.s3.ap-south-1.amazonaws.com/Production/EvtBannerd3b9020ca491a38f2e63f1437297f2f372edc397bfcb405fdff10349d9951c52.jpg" style="display: block;"/>
        <h2 style="margin-top: 30px;">The 14<sup>th</sup> Edition of the GPCA Supply Chain Conference</h2>
        <h4>Theme: Future-proofing supply chains - The time is now</h4>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
      htmlCovidText: """
        <h2>Covid-19 Safety Guidlines</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec porta tellus nisl, vel molestie sem ultricies eu. Phasellus at justo quam. Cras feugiat elit quis massa gravida fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus rhoncus pretium libero, in fermentum libero efficitur at. Aliquam vel est sed orci dictum molestie. Etiam at commodo arcu.
          <br><br>
          Sed pretium augue vel porttitor consequat. Vestibulum pretium elit mattis accumsan eleifend. Pellentesque sollicitudin, dui vitae rhoncus tempus, est turpis vestibulum turpis, gravida tempus lectus metus nec velit. Sed eros turpis, interdum id purus a, ultricies hendrerit arcu. Aenean eleifend quam nec metus consectetur iaculis. Nullam in ullamcorper ex. Vestibulum consectetur nulla ut imperdiet gravida. Aenean non hendrerit libero. Vivamus venenatis quis urna in maximus. Sed id facilisis lorem. Fusce dolor ligula, ultricies nec placerat maximus, volutpat quis libero.
          <br><br>
          Proin varius tempus tincidunt. Donec justo felis, luctus id sollicitudin sit amet, scelerisque id massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas egestas viverra nisi eu varius. Maecenas iaculis posuere volutpat. Nullam sed congue ligula. Sed vel luctus ipsum, in mollis nulla. Donec tristique elementum accumsan. Vestibulum volutpat ligula eu consequat consectetur. Aliquam id ornare augue. Mauris ut neque vel libero efficitur iaculis. Morbi quis risus eros. Mauris eu maximus libero, non porta turpis. Sed rhoncus neque quam, at ullamcorper nunc consectetur sit amet. Ut blandit, erat vitae viverra porttitor, arcu nisi blandit mauris, ut condimentum ligula neque et elit. Donec laoreet vitae diam et sagittis.
        </p> 
        <p>Visit <a href="https://www.gpcasupplychain.com/">www.gpcasupplychain.com</a> for more info. </p>
      """,
    ),
  ];

  List<EventModel> get events {
    return [..._events];
  }

  EventModel findById(String id) {
    return _events.firstWhere((event) => event.id == id);
  }

  // Future<void> getEvents() async {
  //   try {
  //     final url =
  //         Uri.parse(ApiConstants.baseUrl + ApiConstants.eventsListEndPoint);
  //     final response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       final extractedData = json.decode(response.body);
  //       final List<EventModel> loadedEvents = [];
  //       for (var u in extractedData) {
  //         EventModel eventT = EventModel(
  //               eventId: u['eventId'],
  //               eventName: u['eventName'],
  //               eventDate: u['eventDate'],
  //               eventVenue: u['eventVenue'],
  //               eventLogo: u['eventLogo']);
  //               loadedEvents.add(eventT);
  //       }
  //       _events = loadedEvents;
  //       notifyListeners();
  //     }
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }

  String getEventAboutText(String id){
    return _events.firstWhere((event) => event.id == id).htmlAboutText;
  }
  String getEventCovidText(String id){
    return _events.firstWhere((event) => event.id == id).htmlCovidText;
  }
}
