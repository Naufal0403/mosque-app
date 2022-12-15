import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    Key? key,
    required this.onTap,
    this.isEnable = true,
    this.title,
    this.borderColor = const Color(0xff2BA77A),
    this.isRounded = true,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool isEnable;
  final String? title;
  final Color borderColor;
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
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: isEnable ? borderColor : Colors.grey[200]!,
          ),
          borderRadius: isRounded ? BorderRadius.circular(25) : BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            title ?? '',
            style: TextStyle(
              color: isEnable ? borderColor : Colors.grey[200]!,
            ),
          ),
        ),
      ),
    );
  }
}
