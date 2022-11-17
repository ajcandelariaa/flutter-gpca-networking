import 'package:flutter/material.dart';

class MediaPartnerDetailScreen extends StatefulWidget {
  const MediaPartnerDetailScreen({Key? key}) : super(key: key);
  static const routeName = "/media-partner-detail";

  @override
  State<MediaPartnerDetailScreen> createState() => _MediaPartnerDetailScreenState();
}

class _MediaPartnerDetailScreenState extends State<MediaPartnerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      appBar: AppBar(
        title: Text('Media Partner detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Hero(
                  tag: "1",
                  child: Image.asset(
                    "assets/images/sabic_logo.png",
                    height: 200,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
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
                              'SABIC',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Media partner',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF888888),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.favorite_border),
                            Text('201'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alternate_email,
                            size: 18, color: Theme.of(context).primaryColor),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'https://www.sabic.com/en',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alternate_email,
                            size: 18, color: Theme.of(context).primaryColor),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'info@sabic.com',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.phone_outlined,
                            size: 18, color: Theme.of(context).primaryColor),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '+971 12 321 1231',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(color: Color.fromARGB(255, 139, 139, 139),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Company Description:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF888888),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed felis congue, interdum nunc quis, tempor elit. Sed id dictum orci. Mauris a est ac lacus posuere euismod ut non nisi. Aliquam erat volutpat. Aliquam ultricies ex quis finibus mollis. Nullam ut elit eu metus aliquam dapibus. Nullam accumsan viverra erat, eu molestie risus ultrices sit amet. Vivamus non pharetra leo, et cursus lorem. Nunc at ante nec turpis placerat ornare eget sit amet lacus. Nam sed lectus nec risus iaculis bibendum at sit amet dui. Morbi ornare quam ut urna laoreet suscipit. Aenean condimentum consectetur mollis. Pellentesque ut augue sem. Vivamus maximus augue imperdiet augue luctus, vitae rhoncus lacus varius. Mauris posuere elit ac condimentum imperdiet. Duis pharetra pretium rhoncus. In hac habitasse platea dictumst. Nunc tincidunt erat at nibh finibus, lacinia porta libero dictum. Praesent ut luctus velit. Aliquam erat volutpat. In velit metus, ultrices vitae luctus eget, suscipit id turpis."""),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
