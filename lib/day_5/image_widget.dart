import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IMAGE WIDGET',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SizedBox(
        width: double.infinity,
        height: 300,
        child: Image.network(
          "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text("Invalid Image URL"),
            );
          },
          fit: BoxFit.contain,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
