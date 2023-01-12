import 'package:flutter/material.dart';
import 'package:gpca_networking/screens/event/profile/profile_full_image_screen.dart';

class ProfileHeaderBottomModal extends StatelessWidget {
  const ProfileHeaderBottomModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 50,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ProfileFullImageScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return child;
                        },
                      ),
                    );
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.image,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "See photo",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => print("choose photo"),
                  hoverColor: Colors.grey.shade300,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.image_search_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Choose photo",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
