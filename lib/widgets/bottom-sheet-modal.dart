import 'package:flutter/material.dart';

class BottomSheetModal extends StatelessWidget{
  final String buttonLabel;
  final Widget children;
  final double height;

  const BottomSheetModal({
    super.key,
    required this.buttonLabel,
    required this.children,
    this.height = 500
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(buttonLabel),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                  ),
                  color: Colors.white
                ),
                height: height,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[children],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

}