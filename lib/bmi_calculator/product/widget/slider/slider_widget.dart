import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/text/text_widget.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key, required this.progress, required this.onChange});
  final double progress;
  final onChange;
  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Card(
          color: ProjectColors.blueRegal,
          child: Column(
            children: [
              _heightValue(),
              _ProgressValue(widget: widget),
              _Slider(widget: widget),
            ],
          ),
        ),
      ),
    );
  }

  Padding _heightValue() {
    return Padding(
      padding: _WidgetPadding.onlyTopPadding,
      child: TextWidget(
        text: LanguageItems.height.languageString(),
        color: ProjectColors.mithril,
        fontSize: _WidgetSizes().heightFontSize,
      ),
    );
  }
}

class _Slider extends StatelessWidget {
  const _Slider({
    super.key,
    required this.widget,
  });

  final SliderWidget widget;

  @override
  Widget build(BuildContext context) {
    return Slider(
      max: _WidgetSizes().sliderMax,
      min: _WidgetSizes().sliderMin,
      value: widget.progress,
      onChanged: widget.onChange,
      activeColor: ProjectColors.flushOrange,
    );
  }
}

class _ProgressValue extends StatelessWidget {
  const _ProgressValue({
    super.key,
    required this.widget,
  });

  final SliderWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextWidget(
          text: widget.progress.toInt().toString(),
          color: ProjectColors.whiteColor,
          fontSize: _WidgetSizes().progressFontSize,
        ),
        _progressCmText(),
      ],
    );
  }

  Padding _progressCmText() {
    return Padding(
      padding: _WidgetPadding.onlyTopPadding,
      child: TextWidget(
          text: LanguageItems.cm.languageString(),
          color: ProjectColors.whiteColor,
          fontSize: _WidgetSizes().cmTextFontSize),
    );
  }
}

class _WidgetSizes {
  final double sliderMax = 220;
  final double sliderMin = 80;
  final double progressFontSize = 80;
  final double heightFontSize = 25;
  final double cmTextFontSize = 20;
}

class _WidgetPadding {
  static const onlyTopPadding = EdgeInsets.only(top: 30);
}
