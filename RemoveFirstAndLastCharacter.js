function removeChar(str){
  // var str_array = Array.from(str);
  //
  // str_array.splice(0,1);
  // str_array.splice(-1,1);
  //
  // str_array.toString();
  // console.log(str_array);
  //
  // str = str_array.toString();
  // console.log(str);
  // return str;
  // delete str[1];
  // str = str.slice(1,str.length);
  str = str.slice(1,str.length-1);
  console.log(str);
};

removeChar("element");
