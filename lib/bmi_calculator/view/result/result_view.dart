import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:bmi_calculator/bmi_calculator/product/global/navigator.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/button_widget.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/text/text_widget.dart';
import 'package:bmi_calculator/bmi_calculator/view/home/home_view.dart';
import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  const ResultView(
      {super.key,
      required this.weight,
      required this.height,
      required this.resultText,
      required this.bmiResult,
      required this.interpretation});
  final String weight;
  final String height;
  final String resultText;
  final String bmiResult;
  final String interpretation;

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.appBarName.languageString()),
      ),
      body: Column(
        children: [
          TextWidget(
            text: LanguageItems.yourResult.languageString(),
            color: Colors.black,
            fontSize: _WidgteSize().yourResultTextFontSize,
          ),
          SizedBox(height: _WidgteSize().sizedBoxHeight),
          _ContentContainer(widget: widget),
          const _ReCalculateButton(),
        ],
      ),
    );
  }
}

class _ReCalculateButton extends StatelessWidget {
  const _ReCalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      onTap: () {
        NavigatorManager().navigateToWidget(context, const HomeView());
      },
      buttoName: LanguageItems.reCalculate.languageString(),
      fontSize: _WidgteSize().buttonText,
    );
  }
}

class _ContentContainer extends StatelessWidget {
  const _ContentContainer({
    super.key,
    required this.widget,
  });

  final ResultView widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _WidgetPaddingAndMargin.containerMargin,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * _WidgteSize().containerHeight,
      child: Card(
        color: ProjectColors.blueRegal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _resultTextMethod(),
            _bmiResultMethod(),
            _interpretationMethod(),
          ],
        ),
      ),
    );
  }

  Padding _interpretationMethod() {
    return Padding(
      padding: _WidgetPaddingAndMargin.interpretationPadding,
      child: TextWidget(
        text: widget.interpretation,
        color: ProjectColors.whiteColor,
        fontSize: _WidgteSize().interpretationText,
      ),
    );
  }

  TextWidget _bmiResultMethod() {
    return TextWidget(
      text: widget.bmiResult,
      color: ProjectColors.whiteColor,
      fontSize: _WidgteSize().bmiResultText,
    );
  }

  TextWidget _resultTextMethod() {
    return TextWidget(
      text: widget.resultText,
      color: ProjectColors.dancingLadyOrchid,
      fontSize: _WidgteSize().resultText,
    );
  }
}

class _WidgteSize {
  final double yourResultTextFontSize = 50;
  final double sizedBoxHeight = 10;
  final double resultText = 25;
  final double bmiResultText = 100;
  final double interpretationText = 20;
  final double buttonText = 16;
  final double containerHeight = 0.7;
}

class _WidgetPaddingAndMargin {
  static const containerMargin = EdgeInsets.only(left: 8, right: 8);
  static const interpretationPadding = EdgeInsets.symmetric(horizontal: 24);
}
