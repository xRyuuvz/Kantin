import 'package:flutter/material.dart';
import 'package:wisaga/models/food.dart';
import 'package:wisaga/view/widgets/drawer.global.dart';
import 'package:wisaga/view/widgets/my.tab.bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width:
                    150), // Menyesuaikan nilai ini untuk mengatur seberapa jauh teks ke kiri
            Text(
              'Wisaga',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.inversePrimary),
      ),
      drawer: MyDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: Icon(
                  Icons.abc_outlined,
                  size: 30,
                ),
                title: Text("data"),
                subtitle: Text("data"),
              );
            },
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("Second tab items"),
          ),
        ],
      ),
      bottomNavigationBar: MyTabBar(tabController: _tabController),
    );
  }
}
