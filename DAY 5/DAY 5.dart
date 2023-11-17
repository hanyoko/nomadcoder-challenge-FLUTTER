typedef Term = String;
typedef Definition = String;
typedef DictionaryMap = Map<Term, Definition>;

class Dictionary {
  DictionaryMap words = {};

  void add(Term term, Definition definition) {
    words[term] = definition;
  }

  Definition? get(Term term) {
    return words[term];
  }

  void delete(Term term) {
    words.remove(term);
  }

  void update(Term term, Definition definition) {
    words[term] = definition;
  }

  List<Definition> showAll() {
    return words.keys.toList();
  }

  int count() {
    return words.length;
  }

  void upsert(Term term, Definition definition) {
    words[term] = definition;
  }

  bool exists(Term term) {
    return words.containsKey(term);
  }

  void bulkAdd(List<Map<String, String>> tryAddList) {
    for (Map<String, String> eachTryAdd in tryAddList) {
      words[eachTryAdd["term"]!] = eachTryAdd["definition"]!;
    }
  }

  void bulkDelete(List<Map<String, String>> tryRemoveList) {
    tryRemoveList.forEach((Map<String, String> eachTryRemove)
      => words.remove(eachTryRemove["term"]));
  }

}

void main() {

  var dataForTest
    = [
    {"term":"김치", "definition":"대박이네~"}, 
    {"term":"아파트", "definition":"비싸네~"}
  ];

  var test = Dictionary();

  test.bulkAdd(dataForTest);
  print(test.showAll());

  test.bulkDelete(dataForTest);
  print(test.showAll());
}