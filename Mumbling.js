function accum(s) {
  var s_length = s.length;
  console.log(s_length);
  console.log(s[0]);

  var result = "";

  for (var i = 0; i < s.length; i++) {
    var count = 0;

    while (count <= i) {
      if ( count === 0 )
      {
        result = result + s[i].toUpperCase();
      } else {
        result = result + s[i].toLowerCase();;
      }

      count++;
    }

    if (i < s.length - 1) {
      result = result + "-";
    }
  }

  console.log(result);
  return result;

}

// accum("abcd");
accum("ZpglnRxqenU");

// 題目是輸入一個字串 "abcd",
// 輸出 "A-Bb-Ccc-Dddd",
// 第幾個字元就輸出幾個字，中間用 - 連接，字首要大寫。
//
// 首先要算出有幾個字。 猜猜看 s.size ?
// 猜對了 XD，用 .length ;
// atom : command + i 或是 ctrl + R 可執行;
// 接著怎麼開始印？ 先印出 a bb ccc dddd;
// 字串應該直接能當作陣列處理吧？ YES;
// 乾，我先學怎麼印東西。。。 還真的沒 printf?
// 直接打 log 然後按 enter 即可;
// 好，所以第一個字印一個字
// 第二個字印兩個字
// 第三個字印三個字
// 然後如果不是最後一個字都在字串最後加上 "-"
// 成功了，真快
// 接著是 字首要大寫，當印出第一個字的時候也就是 count === 0 時，
// 把字元轉成大寫 s[i].toUpperCase()
// 啊，他給的字串是沒有指定大小寫給的
// 竟然還有一行寫法
　
// 這題花一小時。。。，是不是有點太久，哈
// 試了不少東西 還OK
// OK，從這樣推算，十題，大概就一天解決？
// 今天至少還可以兩題，本日時數目前是四小時。
