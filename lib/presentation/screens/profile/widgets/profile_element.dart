import 'package:flutter/material.dart';

class ProfileBox extends StatefulWidget {
  final String attributeName;
  final String attribute;

  const ProfileBox(
      {Key? key, required this.attributeName, required this.attribute})
      : super(key: key);

  @override
  State<ProfileBox> createState() => _ProfileBoxState();
}

class _ProfileBoxState extends State<ProfileBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.attributeName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
                width: 1000,
                height: 40,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ))),
                child: Row(children: [
                  Expanded(
                      child: Text(widget.attribute,
                          style: const TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              color: Colors.blueAccent)))
                ]))
          ],
        ));
  }
}
