function aliasGen(firstWord, lastWord) {
  console.log(firstWord[0].toUpperCase());
  var firstKey = firstWord[0].toUpperCase();
  var secondKey = lastWord[0].toUpperCase();

  if (firstName[firstKey] === undefined || surname[secondKey] === undefined ) {
    return "Your name must start with a letter from A - Z.";
  }
  else {
    return (firstName[firstKey] + ' ' + surname[secondKey]);
  }
}
/*
這題明顯難不少？喔，是煤寫清楚。去看討論才知道。
hash table key value pair 已經都創好了。
我們只要將傳入字串的的第一個字母變成大寫，然後各自傳入指定的 hash table 取值
第一個要傳入 firstName, 第二個要傳入 surname,
結果就是把兩個字串加起來。
(確認不是英文字母以外的東西？或是回傳的東西 = undefined 時，即回傳 "Your name must start with a letter from A - Z.")
*/
aliasGen('test', 'asd');

// 升級了 XD
