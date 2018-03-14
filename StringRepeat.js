function repeatStr(n, s) {
  var result = "";

  for (var i = 0; i < n; i++) {
    result = result + s;
  }
  console.log(result);
  return result;
}

repeatStr(5, "test");
