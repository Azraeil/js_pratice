function countSheeps(arrayOfSheep) {
  var trueCount = 0;
  for (var i = 0; i < arrayOfSheep.length; i++) {
    if (arrayOfSheep[i] === true) {
      trueCount++;
    }
  }
  console.log(trueCount);
  return trueCount;
}

// 給一個陣列，裏面內容有 true, false, null, undefined 算出 true 的數量.

var array1 = [true,  true,  true,  false,
              true,  true,  true,  true ,
              true,  false, true,  false,
              true,  false, false, true ,
              true,  true,  true,  true ,
              false, false, true,  true ];


countSheeps(array1);
