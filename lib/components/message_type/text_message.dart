import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage message;
  const TextMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context)
              .colorScheme
              .primary
              .withOpacity(message.isSender ? 1 : 0.1)),
      child: Text(
        message.text,
        style: TextStyle(
            color: message.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyLarge!.color),
      ),
    );
  }
}
