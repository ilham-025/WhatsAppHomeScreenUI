import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app/constant.dart';

class ItemRoomChat extends StatelessWidget {
  final String imagePath, name, time, message;
  final int messageCount;
  final bool isNewMessage, isMessageSend, isMessageRead;

  const ItemRoomChat({
    Key key,
    @required this.imagePath,
    @required this.name,
    @required this.time,
    @required this.message,
    @required this.messageCount,
    @required this.isNewMessage,
    @required this.isMessageSend,
    @required this.isMessageRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color;
    if (isNewMessage) {
      color = kSecondaryColor;
    } else {
      color = Colors.black;
    }
    return InkWell(
      onTap: () {},
      child: Container(
        child: Column(
          children: [
            const Divider(
              color: Colors.black12,
              height: 0.5,
              thickness: 0.5,
              indent: 82,
              endIndent: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: 56,
                    height: 56,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.black12,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imagePath),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                name,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                fontSize: 12,
                                color: color,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Visibility(
                              visible: isMessageSend,
                              child: Container(
                                margin: EdgeInsets.only(top: 4),
                                child: SvgPicture.asset(
                                  "assets/icons/icon_check_double.svg",
                                  height: 20,
                                  width: 20,
                                  color:
                                      isMessageRead ? Colors.blue : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(top: 4, right: 16),
                                child: Text(
                                  message,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: isNewMessage,
                              child: Container(
                                width: 20,
                                height: 20,
                                margin: EdgeInsets.only(right: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kSecondaryColor,
                                ),
                                child: Text(
                                  "$messageCount",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
