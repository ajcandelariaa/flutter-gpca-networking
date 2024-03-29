import 'package:flutter/material.dart';

class SpeakerCategoryTile extends StatelessWidget {

  final String categoryName;
  final String categoryImage;
  final String routeName;

  SpeakerCategoryTile({
    required this.categoryName,
    required this.categoryImage,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10,),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(routeName, arguments: categoryName),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Container(
                color: Colors.black,
                child: Opacity(
                  opacity: 0.25,
                  child: Image.asset(
                    categoryImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              "$categoryName speakers",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}