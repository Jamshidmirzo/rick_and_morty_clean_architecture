class GetDate{
  static   String getDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    return '${dateTime.day}-${dateTime.month}-${dateTime.year}';
  }
}