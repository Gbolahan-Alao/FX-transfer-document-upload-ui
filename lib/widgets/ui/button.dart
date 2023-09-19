import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.onPress});
  final String text;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple.withOpacity(.4),
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPress,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              const SizedBox(width: 10),
              const Icon(Icons.arrow_forward_ios_outlined,size: 10,)
            ],
          )),
    );
  }
}
