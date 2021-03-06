import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {

  final Widget title;
  final double height;
  final Color backgroundColor;
  final Alignment align;

  const CustomAppBar({
    @required this.title,
    this.backgroundColor,
    this.height = 150,
    this.align,
  });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(this.height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      height: widget.height,
      width: double.infinity,
      color: widget.backgroundColor ?? Theme.of(context).appBarTheme.backgroundColor,
      child: Align(
        alignment: widget.align ?? Alignment.bottomLeft,
        child: widget.title,
      ),
    );
  }
}