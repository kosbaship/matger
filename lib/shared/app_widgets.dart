import 'package:flutter/material.dart';
import 'package:matger/shared/app_colors.dart';
import 'package:matger/shared/app_icons.dart';
import 'package:matger/shared/app_text_styles.dart';

class LanguageListItem extends StatelessWidget {
  final Function onTap;
  final String languageName;
  final bool isSelected;

  const LanguageListItem({@required this.onTap, @required this.languageName, @required this.isSelected}) ;

  @override
  Widget build(BuildContext context) =>
      InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  languageName,
                ),
              ),
              if (isSelected)
                Icon(
                  AppIcons.Arrow___Right_Circle,
                  color: kActiveColor,
                ),
            ],
          ),
        ),
      );
}

class DefaultSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
  width: double.infinity,
  height: 1.5,
  color: kSeparatorColor,
  );
}

class DefaultButton extends StatelessWidget {
  final Function onPress;
  final String title;

  const DefaultButton({@required this.onPress,@required  this.title}) ;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(  20.0),
    child: Container(
      height: 58.0,
      width: double.infinity,
      child: RawMaterialButton(
        fillColor: kDefaultColor,
        shape: StadiumBorder(),
        onPressed: onPress,
        child: Text(
          title.toUpperCase(),
          style: kWhite16bold(),
        ),
      ),
    ),
  );
}


