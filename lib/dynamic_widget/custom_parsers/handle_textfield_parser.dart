import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:flutter/material.dart';

class HandleTextFieldParser extends WidgetParser {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget parse(Map<String, dynamic> map, BuildContext buildContext,
      ClickListener? listener) {
    //TODO: Make textfield Cust
    return TextField(
        decoration: InputDecoration(hintText: "@"),
        controller: textEditingController,
        onChanged: (text) {
          if (listener is TextFieldClickListener)
            listener.onHandleTextChanged(text);
        });
  }

  @override
  String get widgetName => "HandleTextField";

  @override
  Map<String, dynamic> export(Widget? widget, BuildContext? buildContext) {
    var realWidget = widget as Container;
    return <String, dynamic>{
      "type": widgetName,
    };
  }

  @override
  Type get widgetType => TextField;
}
