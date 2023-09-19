import 'package:flutter/material.dart';

class UploadDocument extends StatelessWidget {
  const UploadDocument({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Upload documents',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          RichText(
            text: const TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                  height: 1.2
                ),
                children: [
                  TextSpan(
                      text:
                          'Upload the following documents in PDF, png, jpeg formats with the max size of'),
                  TextSpan(
                    text: ' 5MB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Make this part bold
                    ),
                  )
                ]),
          ),
      const SizedBox(height: 5,) ],
      ),
    );
  }
}
