import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);
  bool _isIncome = false;
  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          _appBarBottomSection(),
          // _mainBody(),
        ],
      ),
    );
  }

  /// **********************************************
  /// WIDGETS
  /// **********************************************

  /// App Bar
  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.blue,
      leading: Padding(
        padding: EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: () => print('Menu Tapped'),
          icon: Image.asset(
            'assets/images/menu.png',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () => print('Profile Tapped'),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// App Bar Bottom Section
  Container _appBarBottomSection() {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 65),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              /// Income
              GestureDetector(
                onTap: () => setState(() {}),
                child: const Text(
                  'Lend',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ),

              /// Outcome
              GestureDetector(
                onTap: () => setState(() {}),
                child: const Text(
                  'Borrow',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    height: 1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '500',
                style: TextStyle(
                  color: Colors.white.withOpacity(1),
                  fontSize: 18,
                  height: 1,
                ),
              ),
              Text(
                '2000',
                style: TextStyle(
                  color: Colors.white.withOpacity(1),
                  fontSize: 18,
                  height: 1,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
