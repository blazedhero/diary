import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New note', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Notes',
                labelText: 'Add a Note',
                prefixIcon: Icon(Icons.title),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            maxLines: 20,
            keyboardType: TextInputType.multiline,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Type Here',
              labelText: 'Add Here',
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          child: Text(" Save "),
        ),
      ),
    );
  }
}
