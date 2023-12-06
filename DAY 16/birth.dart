//나이 제한 걸기

if (value.length < 8) {
    return LangKeys.enterBirth.tr;
}

if (value.length == 8) {
    int year = int.parse(value.substring(0, 2));  // 0을 포함하고 2를 포함하지 않는 범위의 문자열을 자름

    if (year >= 30) {
        value = '19' + value;
    } else {
        value = '20' + value;
    }
    value = value.replaceAll('.', '-'); // .을 -로 교체

    DateTime birthday = DateTime.parse(value);  // 문자열의 데이터를 DateTime 타입으로 변경
    DateTime currentDate = DateTime.now();  // 현재 시간
    Duration difference = currentDate.difference(birthday); // 현재날짜에서 birthday 값의 차이를 계산
    int age = (difference.inDays / 365).floor();  // inDay = 일 수 반환

    if (age < 14) {
        return CommonKeys.notUse14Years.tr;
    }

    List<int> parts = value.split('-').map((part) => int.parse(part)).toList();
    int month = parts[1];
    int day = parts[2];

    if (month < 1 || month > 12 || day < 1 || day > 31) {
        return CommonKeys.birthFormatMsg.tr;
    }
}