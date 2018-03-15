function greet(language) {
  var greet_languages = {
    english: 'Welcome',
    czech: 'Vitejte',
    danish: 'Velkomst',
    dutch: 'Welkom',
    estonian: 'Tere tulemast',
    finnish: 'Tervetuloa',
    flemish: 'Welgekomen',
    french: 'Bienvenue',
    german: 'Willkommen',
    irish: 'Failte',
    italian: 'Benvenuto',
    latvian: 'Gaidits',
    lithuanian: 'Laukiamas',
    polish: 'Witamy',
    spanish: 'Bienvenido',
    swedish: 'Valkommen',
    welsh: 'Croeso',
    IP_ADDRESS_INVALID: 'Welcome',
    IP_ADDRESS_NOT_FOUND: 'Welcome',
    IP_ADDRESS_REQUIRED: 'Welcome'
  };

  console.log(greet_languages[language]);
  return greet_languages[language];
}

greet("welsh");

// https://goo.gl/2Njb8k
// 使用字串當 key 的 JS 陣列寫法：
//宣告
var jsArray={'a':'happy','b':'man'};
//讀取
for(var key in jsArray){
  console.log(jsArray[key]+'<br>');
}

// 原來是跟陣列用法一樣
