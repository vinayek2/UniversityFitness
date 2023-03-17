import 'package:flutter/material.dart';

class ButtonNext_Button_22 extends StatelessWidget {
  const ButtonNext_Button_22({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: TextButton(
          child: const Text("Let’s Get Started!",
              overflow: TextOverflow.visible,
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              )),
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
