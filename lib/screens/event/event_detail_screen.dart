import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/drawers/event/event_drawer.dart';
import 'package:provider/provider.dart';

class EventDetailScreen extends StatelessWidget {
  static const routeName = '/event-detail';
  const EventDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('This is event_detail_screen');

    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Exit App'),
              content: const Text('Are you sure you want to exit the app?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Event Logo'),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 13),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        drawer: EventDrawer(),
        body: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/drawer-header.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        )
                      ],
                    ),
                  SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        )
                      ],
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.mic,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text('Speakers'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
