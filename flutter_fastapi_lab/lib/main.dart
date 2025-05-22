import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MessageForm());
  }
}

class MessageForm extends StatefulWidget {
  @override
  _MessageFormState createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  final _nameController = TextEditingController();
  final _messageController = TextEditingController();
  String _response = "";
  Future<void> sendMessage() async {
    var url = Uri.parse('http://127.0.0.1:8000/send/');
    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "name": _nameController.text,
        "message": _messageController.text,
      }),
    );
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      setState(() {
        _response = jsonResponse['reply'];
      });
    } else {
      setState(() {
        _response = "Failed to send message.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter-FastAPI Chat")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(labelText: "Message"),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: sendMessage, child: const Text("Send")),
            SizedBox(height: 20),
            Text(_response, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
