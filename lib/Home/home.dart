import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery address',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Salatiga City, Central Java',
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
              ),
            ],
            actionsIconTheme: Theme.of(context).iconTheme,
            toolbarHeight: 60,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: const EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 45,
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Search here...')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
