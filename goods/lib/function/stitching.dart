class Stitching {
  List<Map<String, dynamic>> extractDataByTargetId(
      Map<String, dynamic> res, int targetId) {
    List<Map<String, dynamic>> extractedData = [];
    List<dynamic> data = res['data'];

    for (var item in data) {
      if (item['targetId'] == targetId) {
        extractedData.add(item);
      }
    }
    return extractedData;
  }
}
