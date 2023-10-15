import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pc/chat_item.dart';
import 'package:pc/chat_provider.dart';
import 'package:pc/myappbar.dart';
import 'package:pc/text_voice_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Consumer(builder: (context, ref, child) {
              final chats = ref.watch(chatProvider);
              return ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) => ChatItem(
                      text: chats[index].message, isMe: chats[index].isMe));
            }),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: TextAndVoiceFeild(),
          ),
        ],
      ),
    );
  }
}
