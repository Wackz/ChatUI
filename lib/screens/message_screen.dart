import 'package:chat_ui/components/chat_input.dart';
import 'package:chat_ui/components/message.dart';
import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  static const route = "/chat";
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Row(
          children: [
            BackButton(
              color: Colors.white,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Active 3m ago",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.phone),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
                itemCount: demeChatMessages.length,
                itemBuilder: (context, index) =>
                    Message(message: demeChatMessages[index])),
          )),
          const ChatInput()
        ],
      ),
    );
  }
}
