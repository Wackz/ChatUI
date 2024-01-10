import 'package:chat_ui/models/chat.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatListBody extends StatelessWidget {
  final Chat chat;
  VoidCallback onTap;
  ChatListBody({super.key, required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
          onTap: onTap,
          leading: Image.asset(chat.image),
          title: Text(chat.name),
          subtitle: Text(chat.lastMessage),
          trailing: Text(chat.time),
        ));
  }
}
