function duckDuckGoose(players, goose) {
  if (goose % players.length > 0) {
    return players[ goose % players.length - 1 ].name;
  }
  else {
    return players[players.length - 1].name;
  }
}

// 給一個陣列 players
// 給一個數字 goose
// 如果(數字 % 陣列長度)有餘數，選出 陣列[數字 % 陣列長度 -1]。
// 如果沒有，選出 陣列[0]。
