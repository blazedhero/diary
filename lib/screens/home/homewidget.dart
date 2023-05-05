import 'package:diary/screens/home/widgets/item_note.dart';
import 'package:diary/screens/note/notescreen.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Diary ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          ItemNote(color: Colors.blue),
          ItemNote(color: Colors.deepOrange),
          ItemNote(color: Colors.indigo),
          ItemNote(color: Colors.red),
          ItemNote(color: Colors.green),
          ItemNote(color: Colors.teal),
          ItemNote(color: Colors.orange),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Notes()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
