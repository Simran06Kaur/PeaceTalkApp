import 'package:flutter/material.dart';

@immutable
class ChatModel {
  final String id;
  final String message;
  final bool isMe;

  const ChatModel(this.id, this.message, this.isMe);
}
