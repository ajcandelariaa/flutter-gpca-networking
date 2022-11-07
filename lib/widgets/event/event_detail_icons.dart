import 'package:flutter/material.dart';

class EventDetailIcon extends StatelessWidget {
  String iconTitle;
  IconData icon;
  Function tapHandler;

  EventDetailIcon({
    required this.iconTitle,
    required this.icon,
    required this.tapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => tapHandler(),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor,
            ),
            child: Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(iconTitle, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
