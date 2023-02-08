import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TellErrorWidget extends StatelessWidget {
  const TellErrorWidget({
    super.key,
    required this.statusCode,
  });

  final int statusCode;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(statusCode.toString()),
          Text(AppLocalizations.of(context).errorMessage)
        ],
      )),
    );
  }
}
