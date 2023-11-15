// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/colors.dart';

class IconWidget extends StatefulWidget {
  final String path;
  final Color color;
  final String? text;
  final Function() onTap;
  const IconWidget({
    super.key,
    required this.path,
    this.color = grey,
    this.text,
    required this.onTap,
  });

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          hover = true;
        });
      },
      onExit: (_) {
        setState(() {
          hover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Row(
          children: [
            SvgPicture.asset(
              widget.path,
              color: hover ? grey.withOpacity(0.6) : widget.color,
              width: 16,
              height: 16,
            ),
            if (widget.text != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  widget.text!,
                  style: TextStyle(
                    color: hover ? grey.withOpacity(0.6) : widget.color,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
