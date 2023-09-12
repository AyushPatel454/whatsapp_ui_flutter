import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // appbar Text
          title: const Text(
            "Whatsapp",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          centerTitle: false, // not make whatsapp Text in center

          backgroundColor: appBarColor, // app bar background color

          elevation: 0,

          // ---> search & menu
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],

          bottom: const TabBar(
            // indicator
            indicatorColor: tabColor,
            indicatorWeight: 4,
            // label color
            labelColor: tabColor, // selected label color
            unselectedLabelColor: Colors.grey, // unselected label color
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const ContactsList(),
      ),
    );
  }
}
