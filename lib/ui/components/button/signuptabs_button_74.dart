import 'package:flutter/material.dart';

class SignUpTabs_Button_74 extends StatelessWidget {
  const SignUpTabs_Button_74({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context),
        child: TextButton(
          child: const Text("Enter your UIUC email",
              overflow: TextOverflow.visible,
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              )),
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Color(0xffd9d9d9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
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
