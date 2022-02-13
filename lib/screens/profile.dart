import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _menus = [
    {"menu": "Account", "icon": Icons.account_box},
    {"menu": "Storage", "icon": Icons.storage},
    {"menu": "Manage Accounts", "icon": Icons.settings}
  ];
  Widget _buildMenus(item) {
    return Column(
      children: [
        ListTile(
          leading: Icon(item["icon"]),
          trailing: const Icon(Icons.arrow_right),
          title: Text(
            item["menu"],
            style: const TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 5, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/photos/millennial-male-team-leader-organize-virtual-workshop-with-employees-picture-id1300972574?b=1&k=20&m=1300972574&s=170667a&w=0&h=2nBGC7tr0kWIU8zRQ3dMg-C5JLo9H2sNUuDjQ5mlYfo="),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15.0),
            child: Row(
              children: const [
                Text(
                  "John Doe",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  "randomemail@example.com",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 12,
                      color: Colors.grey[700]),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _menus.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildMenus(_menus[index]);
                }),
          ),
        ],
      ),
    );
  }
}
