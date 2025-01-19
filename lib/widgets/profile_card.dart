import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {super.key,
      required this.suffixIcon,
      required this.label,
      required this.trailingIcon});
  final IconData suffixIcon;
  final String label;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Card(
        elevation: 0,
        color: Color.fromRGBO(249, 250, 248, 1.0),
        child: ListTile(
          leading: Icon(suffixIcon),
          title: Text(label),
          trailing: Icon(
            trailingIcon,
            size: 20,
          ),
        ),
      ),
    );
  }
}
