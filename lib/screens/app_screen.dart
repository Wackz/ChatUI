import 'package:chat_ui/components/chat_body.dart';
import 'package:chat_ui/models/chat.dart';
import 'package:chat_ui/screens/message_screen.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  static const route = "/home";
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Chats",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatListBody(
                    chat: chatsData[index],
                    onTap: () =>
                        Navigator.pushNamed(context, MessageScreen.route))),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.person_add_alt_1),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (value) => setState(() {
                _selectedIndex = value;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Pesan"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "Grup"),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone), label: "Panggilan"),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage("assets/images/user.png"),
                ),
                label: "Profil"),
          ]),
    );
  }
}
