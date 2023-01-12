import 'package:flutter/material.dart';
import 'package:gpca_networking/widgets/profile/profile_header_bottom_modal.dart';

class ProfileHeader extends StatelessWidget {
  final String salutation, firstName, middleName, lastName, photo;

  ProfileHeader({
    required this.salutation,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.photo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/drawer-header.png'),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ProfileHeaderBottomModal();
                },
              );
            },
            child: Stack(
              children: [
                Hero(
                  tag: "image",
                  child: CircleAvatar(
                    backgroundImage: AssetImage(photo),
                    radius: 55,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade300,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            salutation == "N/A"
                ? "$firstName $middleName $lastName"
                : "$salutation $firstName $middleName $lastName",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
