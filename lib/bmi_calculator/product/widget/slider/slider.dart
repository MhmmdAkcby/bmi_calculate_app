import 'package:bmi_calculator/bmi_calculator/product/widget/slider/custom_slider_widget.dart';
import 'package:bmi_calculator/bmi_calculator/state_managment/home_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderWidget(
      progress: context.watch<HomeViewProvider>().progress,
      onChange: (value) {
        context.read<HomeViewProvider>().onChange(value);
      },
    );
  }
}
