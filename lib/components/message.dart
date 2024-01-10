import 'package:chat_ui/components/message_type/audio_message.dart';
import 'package:chat_ui/components/message_type/text_message.dart';
import 'package:chat_ui/components/message_type/video_message.dart';
import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final ChatMessage message;
  const Message({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return const VideoMessage();
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment:
            !message.isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          if (!message.isSender) ...[
            const CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage("assets/images/user.png")),
            const SizedBox(
              width: 10,
            )
          ],
          messageContain(message)
        ],
      ),
    );
  }
}
