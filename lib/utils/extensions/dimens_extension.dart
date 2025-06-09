import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/themes/dimens.dart';

extension DimensExtension on BuildContext {
  Dimens get dimens => Dimens.of(this);
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
}
