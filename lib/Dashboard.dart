import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
//import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:sapati/transaction_item.dart';
import 'Transaction_model.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);
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
          _mainBody(),
        ],
      ),
      floatingActionButton: SpeedDial(
        //animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.arrow_downward),
            label: "Borrow",
            onTap: () => print("Borrow selected"),
          ),
          SpeedDialChild(
            child: const Icon(Icons.arrow_upward),
            label: "Lend",
            onTap: () => print("Lend selected"),
          ),
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

//Mainbody
Widget _mainBody() {
  String dropdownValue = 'Lend';
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Text(
              'Transactions',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 18),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              onChanged: (String? newValue) {
                // setState(() {
                //   dropdownValue = newValue!;
                // });
              },
              items: <String>['Lend', 'Borrow']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: transactionlist.transaction_model.length,
            itemBuilder: (context, index) {
              return transactionwidget(
                transactionmodel: transactionlist.transaction_model[index],
              );
            }),
      ),
    ],
  );
}
