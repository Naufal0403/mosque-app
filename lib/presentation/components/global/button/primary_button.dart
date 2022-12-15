import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.onTap,
    this.isEnable = true,
    this.title,
    this.backgroundColor = const Color(0xff2BA77A),
    this.textColor = Colors.white,
    this.isRounded = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isEnable;
  final String? title;
  final Color backgroundColor;
  final Color textColor;
  final bool isRounded;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isEnable) {
          onTap();
        }
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isEnable ? backgroundColor : Colors.grey[200],
          borderRadius: isRounded ? BorderRadius.circular(25) : BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title ?? '',
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
