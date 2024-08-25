import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
        bottom: TabBar(
            dividerHeight: 0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.green.shade900,
            indicatorWeight: 3,
            labelColor: Colors.green.shade900,
            unselectedLabelColor: Colors.grey.shade600,
            tabs: [
              Tab(
                text: "Grow",
              ),
              Tab(
                text: "Catch up",
              ),
            ]),
      ),
      body: TabBarView(
        children: [
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
