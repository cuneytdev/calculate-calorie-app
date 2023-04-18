import 'package:flutter/material.dart';

class BottomSheetModal extends StatelessWidget{
  final String buttonLabel;
  final Widget children;
  final double height;
  final String? header;
  final Icon? headerIcon;

  const BottomSheetModal({
    super.key,
    required this.buttonLabel,
    required this.children,
    this.height = 500,
    this.header,
    this.headerIcon
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(buttonLabel),
        onPressed: () {
          showModalBottomSheet<void>(
            useRootNavigator: true,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: (<Widget>[
                    Column(
                      children: [
                        if(header != null)  Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.food_bank,
                                size: 30,
                              ),
                              Text(
                                  style: const  TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600
                                  ), header!
                              )
                            ]
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 15),
                          child: children,
                        )
                      ],
                    )
                  ]),
                ),
              );
            },
          );
        },
      ),
    );
  }

}