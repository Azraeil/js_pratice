function keysAndValues(data) {
  console.log(data);
  var keyArray = [];
  var valueArray = [];
  var result = [];

  for (var key in data) {
    console.log(key);
    keyArray.push(key);

    console.log(data[key]);
    valueArray.push(data[key]);
  }
  console.log(keyArray);
  console.log(valueArray);

  result = [ keyArray, valueArray ]
  console.log(result);

  return result;
}

/*
Complete the keysAndValues function so that it takes in an object and returns the keys and values as separate arrays.

這題是 7 kyu 的哦，
給 一個 hash table，我們要分別把 key 跟 value 取出來

還是搜尋到同一個頁面去取經 XD
用 for in 或是 foreach 都行的樣子，但是 foreach 我還看不太懂。

本提花大概 20 mins.

Example:
*/

keysAndValues({
  a: 1,
  b: 2,
  c: 3
}); // should return [['a', 'b', 'c'], [1, 2, 3]]
