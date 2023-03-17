import 'package:flutter/material.dart';

class Rectangle_Button_66 extends StatelessWidget {
  const Rectangle_Button_66({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: TextButton(
          child: const Text("",
              overflow: TextOverflow.visible, style: TextStyle()),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Color(0xcc1566a5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: const BorderSide(
                width: 0,
                color: Colors.transparent,
              ),
            ),
          ),
          onPressed: () {},
        ));
  }
}
