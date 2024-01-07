import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blob loading',
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'Blob loading'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Blob.animatedRandom(
              size: 300,
              loop: true,
              minGrowth: 5,
              edgesCount: 4,
              duration: const Duration(milliseconds: 800),
              styles: BlobStyles(
                  gradient:
                  const LinearGradient(colors: [Colors.purple, Colors.pink])
                      .createShader(const Rect.fromLTRB(20, 20, 300, 300))),
            ),
            Blob.animatedRandom(
              size: 220,
              loop: true,
              minGrowth: 6,
              edgesCount: 5,
              duration: const Duration(milliseconds: 800),
              styles: BlobStyles(
                  gradient:
                  const LinearGradient(colors: [Colors.yellow, Colors.green])
                      .createShader(const Rect.fromLTRB(20, 20, 300, 300))),
            ),
            Blob.animatedRandom(
              size: 200,
              loop: true,
              minGrowth: 6,
              edgesCount: 5,
              duration: const Duration(milliseconds: 800),
              styles: BlobStyles(
                  gradient: const LinearGradient(colors: [Colors.red, Colors.blue])
                      .createShader(const Rect.fromLTRB(20, 20, 200, 200))),
            ),
            Blob.animatedRandom(
              size: 140,
              loop: false,
              minGrowth: 8,
              duration: const Duration(milliseconds: 1800),
              styles: BlobStyles(color: Colors.black),
              child: const Center(
                child: Text(
                  "Loading...",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
