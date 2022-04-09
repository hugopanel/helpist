import 'package:flutter/material.dart';

class customCardWidget extends StatelessWidget {
  final String title;
  final String content;
  final Widget? action;

  const customCardWidget(
      {Key? key, required this.title, required this.content, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.shade100, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(this.title,
                  style: TextStyle(fontSize: 22, color: Colors.black87)),
              Text(
                this.content,
                style: TextStyle(fontSize: 15, color: Colors.black38),
              ),
              if (action != null) Material(child: action),
            ],
          ),
        ),
      ),
    );
  }
}
