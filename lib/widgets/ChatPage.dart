import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/widgets/ChatBottomBar.dart';
import 'package:myapp/widgets/Chatsample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(65),
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/profile1.png",
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Coder",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Online",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white.withOpacity(0.8)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  CupertinoIcons.video_camera_solid,
                  size: 33,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15),
                child: Icon(
                  Icons.call,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Icon(
                  Icons.more_vert,
                  size: 28,
                  color: Colors.white,
                ),
              )
            ],
          )),

          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/backgroun.png"),
              fit: BoxFit.cover)
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Color(0xfffff3c2),
                  borderRadius: BorderRadius.circular(5),boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.5),blurRadius: 8),
                  ],
                  ),
                  child: Text("Messages and calls are end to encrypted, No one outside of this chat can read or listen. Tap to learn more ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),),
                ),
                chatsample(),
                 chatsample(),
                  chatsample(),
                   chatsample(),
              ],),
            ),

          ),
          bottomSheet: ChatBottomBar(),
    );
  }
}
