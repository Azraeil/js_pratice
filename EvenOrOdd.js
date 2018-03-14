function even_or_odd(number) {
  // if (number >=0) {
    if (number %2 != 0) {
      return "Odd";
    }
    else {
      return "Even";
    }
  // }
  // else {
  //   return "Odd";
  // }
}

even_or_odd(2);

// 哦，想錯，負的偶數也是偶數。
