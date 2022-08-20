import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({
    Key? key,
    required this.title,
    required String profileImage,
  })  : _profileImage = profileImage,
        super(key: key);

  final String title;
  final String _profileImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // left title
        Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),

        // spacer
        const Spacer(),

        // right profile image
        Container(
          height: 32.0,
          width: 32.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(_profileImage),
              fit: BoxFit.fill,
            ),
          ),
//                    child: Placeholder(),
        ),
      ],
    );
  }
}
