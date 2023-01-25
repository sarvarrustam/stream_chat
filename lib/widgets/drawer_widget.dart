import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 40,
      width: 40,
      child: Drawer(
        backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                //image
                SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Container(
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
