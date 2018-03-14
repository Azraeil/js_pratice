function sumArray(array) {
  if (array === null) {
    return 0;
  }
  if (array.length > 2) {

    var sum = 0;

    for (var i = 0; i < array.length; i++) {
      sum = sum + array[i];
    }

    array.sort(function(a, b) {
      return a - b;
    });

    return (sum - (array[0] + array[array.length - 1]));
  } else {
    return 0;
  }
}
// 給一個矩陣，把裡面的元素都相加起來，扣掉最大最小值之後回傳。
// 哦 看來 JS 沒有 sum function 直接懶人支援 XD

console.log(sumArray([6, 2, 1, 8, 10]));

// what ????
// sort 完 變這樣是什麼巫術？[ 1, 10, 2, 6, 8 ]
// 預設是用字元的 unicode 編碼位置值排序 =_=
// 所以要用數值排序的話還要加上 compareFunction
// function compare(a, b) {
//   if (在某排序標準下 a 小於 b) {
//     return -1;
//   }
//   if (在某排序標準下 a 大於 b) {
//     return 1;
//   }
//   // a 必須等於 b
//   return 0;
// }

// 我們需要比較的是數字：
function compareNumbers(a, b) {
  return a - b;
  // 如果 a - b > 0, 表示 a > b, 把 b 擺在 a 前面
  // 如果 a - b < 0, 表示 b > a, 把 b 擺在 a 後面
  // 如果 a - b === 0, 表示 a === b, 位置不變。
}
