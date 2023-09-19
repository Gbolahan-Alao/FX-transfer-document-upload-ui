import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 48, 3, 56),
          Color.fromARGB(255, 35, 4, 41),
          Color.fromARGB(255, 48, 3, 56)
        ]),
      ),
      margin: const EdgeInsets.only(top: 40, bottom: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            InkWell(
              child: Container(height: 35,width: 35,
                padding: const EdgeInsets.all(3.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 18.0,
                ),
              ),
            ),
            const SizedBox( 
              width: 30,
            ),
            Text(
              title,
              style:const TextStyle(fontSize: 16,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
