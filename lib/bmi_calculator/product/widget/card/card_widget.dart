import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.textName, required this.number, required this.cardWidget});
  final String textName;
  final String number;
  final Widget cardWidget;
  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * _WidgetSizes().sizedBoxWidth,
      height: MediaQuery.of(context).size.height * _WidgetSizes().sizedBoxHeight,
      child: _Card(widget: widget),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    super.key,
    required this.widget,
  });

  final CardWidget widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ProjectColors.blueRegal,
      child: Column(
        children: [_Text(widget: widget), _numberText(context), _content()],
      ),
    );
  }

  Row _content() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [widget.cardWidget],
    );
  }

  Text _numberText(BuildContext context) {
    return Text(widget.number.toString(),
        style: textStyle(context, ProjectColors.whiteColor, _WidgetSizes().textNumberSize));
  }
}

class _Text extends StatelessWidget {
  const _Text({
    super.key,
    required this.widget,
  });

  final CardWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _WidgtePadding.paddingColumn,
      child: Text(widget.textName, style: textStyle(context, ProjectColors.mithril, _WidgetSizes().textNameSize)),
    );
  }
}

TextStyle? textStyle(BuildContext context, color, size) {
  return Theme.of(context).textTheme.titleLarge?.copyWith(
        color: color,
        fontSize: size,
      );
}

class _WidgetSizes {
  final double sizedBoxWidth = 0.5;
  final double sizedBoxHeight = 0.3;
  final double textNameSize = 25;
  final double textNumberSize = 60;
}

class _WidgtePadding {
  static const paddingColumn = EdgeInsets.only(top: 40, bottom: 4);
}
