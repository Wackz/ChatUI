import 'package:chat_ui/models/message.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;
  const AudioMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context)
              .colorScheme
              .primary
              .withOpacity(message.isSender ? 1 : 0.1)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender
                ? Colors.white
                : Theme.of(context).colorScheme.primary,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 2,
                  color: message.isSender
                      ? Colors.white
                      : Theme.of(context).colorScheme.primary.withOpacity(0.5),
                ),
                Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: message.isSender
                              ? Colors.white
                              : Theme.of(context).colorScheme.primary),
                    ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
