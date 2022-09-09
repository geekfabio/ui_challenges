import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final double opacity;

  const CompanyCard({
    Key? key,
    required this.imageUrl,
    required this.userName,
    this.opacity = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromRGBO(43, 46, 48, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              radius: MediaQuery.of(context).size.width * 0.11,
            ),
            const SizedBox(height: 10),
            Text(
              userName,
              style: const TextStyle(
                color: Color.fromRGBO(133, 134, 136, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
