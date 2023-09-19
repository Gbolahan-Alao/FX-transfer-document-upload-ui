import 'package:flutter/material.dart';

class DocumentItem extends StatelessWidget {
  const DocumentItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});
  final IconData icon;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( left: 15, right:15, bottom: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              
                 SizedBox(
                width: 250,
                   child: Text(
                    title,
                    style: const TextStyle(fontSize: 14),
                                 ),
                 ),
              
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                height: 17,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadiusDirectional.circular(4)),
                child: const Text(
                  'Pending',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
