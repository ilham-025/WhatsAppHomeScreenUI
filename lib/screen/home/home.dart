import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whats_app/constant.dart';
import 'package:whats_app/screen/call/call_screen.dart';
import 'package:whats_app/screen/camera/camera_screen.dart';
import 'package:whats_app/screen/chat/chat_screen.dart';
import 'package:whats_app/screen/status/status_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.white),
          ),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            labelPadding: EdgeInsets.all(0),
            tabs: [
              Tab(
                child: Container(
                  width: size.width * 0.1,
                  child: Icon(Icons.camera_alt),
                ),
              ),
              Tab(
                child: Container(
                  width: size.width * 0.3,
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width * 0.3,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("CHAT"),
                        Container(
                          width: 20,
                          height: 20,
                          margin: EdgeInsets.only(left: 7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: kPrimaryColorDark,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: size.width * 0.3,
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width * 0.3,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("STATUS"),
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.only(left: 7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  width: size.width * 0.3,
                  alignment: Alignment.center,
                  child: Text("PANGGILAN"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kSecondaryColor,
          child: SvgPicture.asset("assets/icons/icon_message.svg"),
          onPressed: () {},
        ),
      ),
    );
  }
}
