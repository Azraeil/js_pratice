function generateRange(min, max, step) {
  var array = [];
  for (var i = min; i <= max; i = i + step) {
    array.push(i);
  }
  console.log(array);
  return array;
}


/*
Implement a function named generateRange(min, max, step), which takes three arguments and generates a range of integers from min to max, with the step. The first integer is the minimum value, the second is the maximum of the range and the third is the step. (min < max)

Task
Implement a function named

generateRange(2, 10, 2) // should return array of [2,4,6,8,10]
generateRange(1, 10, 3) // should return array of [1,4,7,10]
, which takes three arguments and generates a range of integers from min to max, with given step. The first is minimum value, second is maximum of range and the third is step.

是我變強了一點還是純粹其他同學沒想通？ XD
本來想說是 algorithm 我還會很擔心勒，結果 10 分鐘秒殺。
*/

generateRange(2, 10, 2);
