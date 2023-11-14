void main() {
  String name = "han";	//String
  bool alive = true;		//true / fasle를 값으로 가지는 bool 자료형
  int age = 12;		//int 숫자 자료형
  double money = 69.99;	//소수점 작성가능한 double 자료형
}

void main() {
  String name = "han";
  bool alive = true;
  int age = 12;
  double money = 69.99;
  
  num x = 12;
  x = 1.1;
}

void main() {
  //var numbers = [1, 2, 3, 4];
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(1);
  print(numbers);
}



void main() {
  var giveMeFive = true;
  var numbers = [
    1, 
    2,
    3,
    4,
    if(giveMeFive) 5
  ];
  print(numbers);
}


//[1, 2, 3, 4, 5]


String interpolation
text에 변수를 추가하는 방법

void main() {
  var name = 'Han';
  var greeting = 'Hello everyone, my name is $name, nice to meet you !';
  print(greeting);
}

//Hello everyone, my name is Han, nice to meet you !



void main() {
  var name = 'Han';
  var age = 10;
  var greeting = "Hello everyone, My name is $name and I'm $age";
  print(greeting);
}

//Hello everyone, My name is Han and I'm 10

void main() {
  var name = 'Han';
  var age = 10;
  //var greeting = "Hello everyone, My name is $name and I'm ${age + 2}";
  var greeting = "Hello everyone, My name is $name and I\'m ${age + 2}";
  print(greeting);
}

//I'm처럼 '(작은따옴표)를 사용할 때는 역슬래시\를 사용해주면 오류처리가능


void main() {
var oldFriends = ['han', 'ko'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    ];
  
    for (var friend in oldFriends) "❤ $friend";
  print(newFriends);
}


//[lewis, ralph, darren]


void main() {
var oldFriends = ['han', 'yohan'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "❤ $friend",
    ];
  print(newFriends);
}

//[lewis, ralph, darren, ❤ han, ❤ yohan]

void main() {
  var player = {
    'name': 'han',
    'xp': 19.99,
    'superpower': false,
  }
}

object

위와 같이 작성하는 것이 object
어떤 타입이든 작성할 수 있다.
한가지의 타입으로 작성하고 key 값을 확인하면 변경된다.

Dart에서는 모든 게 object로부터 생겨난다.
object는 기본적으로 어떤 자료형이든지 될 수 있다.
any와 같다.


void main() {
  Map<int, bool> player = {
       //key 값은 int, value 값은 bool
    1: true,
    2: false,
    3: true
//원하는만큼 늘려줄 수 있다.

  };
}


void main() {
  Map<List<int>, bool> player = {
	//key로 integer List, value로는 bool
    1: true,
    2: false,
    3: true
//그러면 1, 2, 3에 오류 발생
//integer이 아니라 integer list로 작성하라고
  };
}


void main() {
  Map<List<int>, bool> player = {
    [1, 2, 3, 5]: true,
  };
}


void main() {
  List<Map<String>, Object>> players = {
    {
      'name': 'han',
      'xp': 1999993.9999,
    },
    {
      'name': 'han',
      'xp': 1999993.9999,
    }
  };
}

//Map List 만들기



Maps
void main() {
var player = {
1: true,
2: false,
3 : true,
};
}

var을 사용하면 컴파일러가 key와 value를 유추해서 보여줌

Type이 Map

Key는 String, Value는 Object 형태
Dart에서는 모든 자료형이 Object로부터 생김 -> object는 기본적으로 어떤 자료형이든지 될 수 있음
혹은 명시적으로 정의할 수 있음
Map player = {}

void main() {
Map player = {
1: true,
2: false,
};
}
3번째 요소로 '3' : true를 주었을 때, key가 int가 아닌 String이므로 오류가 발생함.


// Map,String> 으로 복잡한 타입의 Map도 정의할 수 있음
void main() {
Map, String> player = {
[1, 2, 3, 6, 7]: "Jisoo",
[4, 5]: "Jeju",
};
print(player.keys);
}
// ([1, 2, 3, 6, 7], [4, 5])


---

Set

void main() {
  var numbers = {1, 2, 3, 4};
}

명확하게 작성하기 위해서

void main() {
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}

//{1, 2, 3, 4}


Set과 List의 차이점
Set에 속한 모든 아이템들은 유니크하다.
그래서 여러번 1을 추가해도 출력값을 확인하면 {1, 2, 3, 4} 그대로다.

*Set은 중괄호
*List는 대괄호

void main() {
  List<int> numbers = [1, 2, 3, 4];
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}

//[1, 2, 3, 4, 1, 1, 1]

List를 사용하면 1이 추가된 것을 확인할 수 있다.


요소가 항상 하나씩만 있어야 되면 Set을 사용
unique 할 필요가 없다면 List를 사용

Dart에서 List는 Python의 List와 같고,
Dart에서 Set은 Python의 Tuple과 같다. / JavaScript의 Set