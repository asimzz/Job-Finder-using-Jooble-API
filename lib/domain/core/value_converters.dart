import 'package:html_unescape/html_unescape_small.dart';

const NOT_SPECIFIED_MESSAGE = 'Not Specified';
String convertStringToHtmlString(String plainString) {
  final unescape = new HtmlUnescape();
  String htmlString = unescape.convert(plainString);
  htmlString = htmlString.replaceAll('\n', '<br />');
  return htmlString;
}

String convertEmptyTypeToSomeValue(String string) {
  if (string.isEmpty) {
    return NOT_SPECIFIED_MESSAGE;
  } else {
    return string;
  }
}

String convertDateStringToDateTimeObject(String dateString) {
  final dateTime = DateTime.parse(dateString).toString().split(' ')[0];
  return dateTime;
}
