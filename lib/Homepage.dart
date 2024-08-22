import 'package:flutter/material.dart';
import 'package:myapp/widgets/Callswidgets.dart';
import 'package:myapp/widgets/Chatswidgets.dart';
import 'package:myapp/widgets/Statuswidgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 6,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 15),
                  child: Icon(Icons.search, size: 28, color: Colors.white),
                ),
                PopupMenuButton(
                  onSelected: (value) {
                    if(value == 6){
                      Navigator.pushNamed(context, "settingpage");
                    }
                  },
                  color: Colors.white,
                  iconSize: 28,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "New broadcast",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text(
                        "Linked devices",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text(
                        "starred messages",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text(
                        "payment",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                    PopupMenuItem(
                      value: 6,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xff075e55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    //tab1
                    Container(
                      width: 24,
                      child: Tab(
                          icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      )),
                    ),
                    //tab2
                    Container(
                      width: 80,
                      child: Tab(
                        child: Row(children: [
                          Text(
                            "CHATS",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "12",
                              style: TextStyle(
                                  color: Color(0xff075e55), fontSize: 13),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      width: 65,
                      child: Tab(
                        child: Text(
                          "STATUS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      child: Tab(
                        child: Text(
                          "CALLS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(flex: 1,
                child: TabBarView(children: [
                //tab1
                Container(
                  color: Colors.black,
                ),
                //tab2
                ChartWidget(),
                //tab3
                Statuswidgets(),
                //tab4
               callswidget(),
              ],))
            ],
          ),
        ));
  }
}
