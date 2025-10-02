import 'package:flutter/services.dart'; // Required for TextInputFormatter

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove all non-digit characters from the new value
    final String newText = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Build the formatted string
    String formattedText = '';
    if (newText.isNotEmpty) {
      formattedText += '(';
      if (newText.length >= 3) {
        formattedText += newText.substring(0, 3);
        formattedText += ') ';
        if (newText.length >= 6) {
          formattedText += newText.substring(3, 6);
          formattedText += '-';
          if (newText.length >= 10) {
            formattedText += newText.substring(6, 10);
          } else {
            formattedText += newText.substring(6);
          }
        } else {
          formattedText += newText.substring(3);
        }
      } else {
        formattedText += newText;
      }
    }

    // Adjust cursor position
    // TextSelection newSelection = newValue.selection;
    // if (formattedText.length < oldValue.text.length) {
    //   newSelection = newValue.selection;
    // } else if (formattedText.length > oldValue.text.length) {
    //   // If characters were added, adjust cursor to stay at the end of the input
    //   int newOffset = newValue.selection.end + (formattedText.length - oldValue.text.length);
    //   newSelection = TextSelection.collapsed(offset: newOffset.clamp(0, formattedText.length));
    // }

    return TextEditingValue(
      text: formattedText,
      // selection: newSelection,
    );
  }
}