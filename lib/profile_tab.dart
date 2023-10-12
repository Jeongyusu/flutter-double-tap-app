import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_transit,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.bike_scooter,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("안녕"),
                Text("안녕하세요"),
                Text("안녕하십니까"),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    print("initState() 초기화됨");
  }
}
