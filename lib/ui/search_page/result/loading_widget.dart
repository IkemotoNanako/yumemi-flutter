import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: Color.fromRGBO(245, 206, 199, 1),
          )),
    );
  }
}
