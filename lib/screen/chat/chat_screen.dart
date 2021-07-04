import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:whats_app/component/item_room_chat.dart';
import 'package:faker/faker.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=1",
            name: faker.person.name(),
            time: "10:00",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: true,
            isMessageSend: false,
            isMessageRead: false,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=2",
            name: faker.person.name(),
            time: "09:32",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: false,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=3",
            name: faker.person.name(),
            time: "09:30",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: true,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=4",
            name: faker.person.name(),
            time: "09:32",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: false,
            isMessageRead: false,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=5",
            name: faker.person.name(),
            time: "09:20",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: false,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=6",
            name: faker.person.name(),
            time: "09:10",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: false,
            isMessageRead: false,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=7",
            name: faker.person.name(),
            time: "Yesterday",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: true,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=8",
            name: faker.person.name(),
            time: "Yesterday",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: true,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=9",
            name: faker.person.name(),
            time: "Yesterday",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: true,
          ),
          ItemRoomChat(
            imagePath: "https://i.pravatar.cc/150?img=10",
            name: faker.person.name(),
            time: "7/2/21",
            message: loremIpsum(words: 60),
            messageCount: 1,
            isNewMessage: false,
            isMessageSend: true,
            isMessageRead: false,
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
