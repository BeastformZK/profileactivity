import 'package:flutter/material.dart';
import 'package:profileactivity/UI/profile.dart';

class NavigationDrawerPage extends StatelessWidget {
  const NavigationDrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.blueGrey[900],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
                size: 35,
              ),
              title: const Text(
                'Gamer Profile',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            const Divider(color: Colors.green),
          ],
        ),
      );
}
