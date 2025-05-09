import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextPoppines extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final bool? stroke;
  const MyTextPoppines({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.letterSpacing,
    this.stroke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? width / 28,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: FontStyle.normal,
        //  color: color ?? Colors.black,
        height: height ?? (heights > 650 ? heights / 600 : heights / 600),
        letterSpacing: letterSpacing ?? 0,
        foreground: stroke ?? false
            ? (Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 0.5
              ..color = Colors.black)
            : null,
        color: stroke ?? false ? null : color ?? Colors.black,
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class SelectablePoppines extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  const SelectablePoppines({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return SelectableText(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? width / 28,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: FontStyle.normal,
        color: color ?? Colors.black,
        height: height ?? 1.4,
        letterSpacing: letterSpacing ?? 0,
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      textHeightBehavior: TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
      ),
    );
  }
}

class MyTextSyne extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final bool? stroke;
  const MyTextSyne({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.letterSpacing,
    this.stroke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: GoogleFonts.syne(
        fontSize: fontSize ?? width / 28,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: FontStyle.normal,
        //  color: color ?? Colors.black,
        height: height ?? (heights > 650 ? heights / 600 : heights / 600),
        letterSpacing: letterSpacing ?? 0,
        foreground: stroke ?? false
            ? (Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 0.5
              ..color = Colors.black)
            : null,
        color: stroke ?? false ? null : color ?? Colors.black,
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final bool? stroke;
  final String googleFontFamily;
  const MyText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.height,
    this.maxLines,
    this.textAlign,
    this.letterSpacing,
    this.stroke,
    required this.googleFontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Text(
      text,
      style: GoogleFonts.getFont(
        googleFontFamily,
        textStyle: TextStyle(
          fontSize: fontSize ?? width / 28,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontStyle: FontStyle.normal,
          //  color: color ?? Colors.black,
          height: height ?? (heights > 650 ? heights / 600 : heights / 600),
          letterSpacing: letterSpacing ?? 0,
          foreground: stroke ?? false
              ? (Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 0.5
                ..color = Colors.black)
              : null,
          color: stroke ?? false ? null : color ?? Colors.black,
        ),
      ),
      textAlign: textAlign,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
