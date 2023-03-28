import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              subtitle: const Text('Go to Home Screen'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              tileColor: Colors.amber,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              subtitle: const Text('Go to Cart Screen'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              tileColor: Colors.red,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: const Text('Log Out'),
              // subtitle: const Text('Go to Home Screen'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              tileColor: Colors.green,
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
