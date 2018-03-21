class BaseCharacter {
  constructor(name, hp, ap) {
    this.name = name;
    this.hp = hp;
    this.maxHp = hp;
    this.ap = ap;
    this.alive = true;
  }

  attack(character, damage) {
    if (this.alive === false) {
      return;
    }

    character.getHurt(damage);
  }

  getHurt(damage) {
    this.hp -= damage;
    if (this.hp <= 0) {
      this.die();
    }
    else if (this.hp > this.maxHp) {
      this.hp = this.maxHp;
    }

    // 加入特效與傷害數字
    // this 在不同的情況下，會對應到不同的物件。
    // 所以先把 BaseCharacter object 用 _this 暫存起來
    var _this = this;
    // i 用來設定連續播放特效的圖片編號
    var i = 1;

    var effectImage = function() {
      if (i === 1) {
        // 把隱藏的 effect-image element 設爲顯示
        _this.element.getElementsByClassName("effect-image")[0].style.display = "block";

        // 顯示傷害數字，加入已經設定好的 CSS class .attacked
        _this.element.getElementsByClassName("hurt-text")[0].classList.add("attacked");

        // 設定傷害數字
        _this.element.getElementsByClassName("hurt-text")[0].textContent = damage;
      }

      // 取得下一個特效圖片
      _this.element.getElementsByClassName("effect-image")[0].src = "images/effect/blade/" + i + ".png";

      i++;

      // console.log(i);

      if (i > 8) {
        // 特效圖片顯示關閉
        _this.element.getElementsByClassName("effect-image")[0].style.display = "none";

        // 移除 傷害文字 CSS class .attacked
        _this.element.getElementsByClassName("hurt-text")[0].classList.remove("attacked");

        // 清空傷害文字
        _this.element.getElementsByClassName("hurt-text")[0].textContent = "";
        clearInterval(_this.id);
      }

    // 用 damage 判斷是要攻擊還是補血
    if (damage > 0) {
      _this.id = setInterval(effectImage, 50);
    } else {

    }

  };

  //
  die(){
    this.alive = false;
  }

  // 隨著戰鬥更新生命值 bar 與數字
  updateHtml(hpElement, hurtElement) {
    // 更新 hp 文字
    hpElement.textContent = this.hp;

    // 更新 生命值 bar (受傷的部分)
    hurtElement.style.width = (100 - this.hp / this.maxHp * 100) + "%";

  }
}

class Hero extends BaseCharacter {
  constructor(name, hp, ap) {
    super(name, hp, ap);

    // 先列出並命名會隨著戰鬥進展而會更動的 HTML 標籤：
    this.element = document.getElementById("hero-image-block");
    this.hpElement = document.getElementById("hero-hp");
    this.maxHpElement = document.getElementById("hero-max-hp");
    this.hurtElement = document.getElementById("hero-hp-hurt");

    // 在遊戲開始時更新生命值數字
    this.hpElement.textContent = this.hp;
    this.maxHpElement.textContent = this.maxHp;

    console.log("召喚英雄 " + this.name + "！");
  }

  attack(character) {
    // Math.random 取得一個由 0 至 1 的隨機數字，EX：0.5
    var damage = Math.random() * (this.ap / 2) + (this.ap / 2);
    // Math.floor 將數字去掉小數的部分
    super.attack(character, Math.floor(damage));
  }

  heal() {
    var healPoint = -30;

    this.getHurt(healPoint);
  }

  getHurt(damage) {
    super.getHurt(damage);
    this.updateHtml(this.hpElement, this.hurtElement);
  }
}

class Monster extends BaseCharacter {
  constructor(name, hp, ap) {
    super(name, hp, ap);

    // 先列出並命名會隨著戰鬥進展而會更動的 HTML 標籤：
    this.element = document.getElementById("monster-image-block");
    this.hpElement = document.getElementById("monster-hp");
    this.maxHpElement = document.getElementById("monster-max-hp");
    this.hurtElement = document.getElementById("monster-hp-hurt");

    // 在遊戲開始時更新生命值數字
    this.hpElement.textContent = this.hp;
    this.maxHpElement.textContent = this.maxHp;

    console.log("遭遇怪獸 " + this.name + "！");
  }

  attack(character) {
    var damage = Math.random() * (this.ap / 2) + (this.ap / 2);
    super.attack(character, Math.floor(damage));
  }

  getHurt(damage) {
    super.getHurt(damage);
    this.updateHtml(this.hpElement, this.hurtElement);
  }
}

var hero = new Hero("C8763", 130, 30);
var monster = new Monster("Skeleton", 130, 10);

// 英雄行動開始設定
function addSkillEvent() {
  var skill = document.getElementById("skill");
  // 按下攻擊按鈕
  skill.onclick = function() {
    heroAttack();
  }

  var heal = document.getElementById("heal");
  // 按下補血按鈕
  heal.onclick = function() {
    heroHeal();
  }
}
addSkillEvent();

// 回合結束機制
var rounds = 10;

function endTurn() {
  rounds--;

  document.getElementById("round-num").textContent = rounds;
  if (rounds < 1) {
    // 遊戲結束
    finish();
  }
}

// 攻擊開始後隱藏攻擊按鈕
function heroAttack() {
  document.getElementsByClassName("skill-block")[0].style.display = "none";

  // 設定英雄與怪物動作的時間軸
  // window method： setTimeout
  // 點擊按鈕過了 100ms 後，加入 已經設定好的 CSS class 讓英雄移動
  setTimeout(function() {
    hero.element.classList.add("attacking");

    // 英雄移動完之後 500ms，進行攻擊，並歸位
    setTimeout(function() {
      hero.attack(monster);
      hero.element.classList.remove("attacking");
    }, 500);
  }, 100);

  // 怪物攻擊
  monsterAttack();

}

// 判斷勝負，再次挑戰按鈕
function finish() {
  var dialog = document.getElementById(("dialog"));
  dialog.style.display = "block";

  if (monster.alive === false) {
    dialog.classList.add("win");
  } else {
    dialog.classList.add("lose");
  }
}

function monsterAttack() {
  // 怪獸移動，因爲是寫在同一個 function 內
  // 所以觸發時間要從按下英雄攻擊鈕開始算: 100 + 500 + 500 =1100
  setTimeout(function() {
    // 如果怪獸還活著才進行移動與攻擊
    if (monster.alive) {
      // 怪獸移動
      monster.element.classList.add("attacking");

      // 怪獸攻擊與歸位
      setTimeout(function() {
        monster.attack(hero);
        monster.element.classList.remove("attacking");
        endTurn();
        if (hero.alive == false) {
          // 遊戲結束
          finish();
        } else {
          document.getElementsByClassName("skill-block")[0].style.display = "block";
        }

      }, 500);

    } else {
      // 遊戲結束
      finish();
    }
  }, 1100);
}

function heroHeal() {
  document.getElementsByClassName("skill-block")[0].style.display = "none";

  // 設定英雄與怪物動作的時間軸
  // window method： setTimeout
  // 點擊按鈕過了 100ms 後，加入 已經設定好的 CSS class 讓英雄移動
  setTimeout(function() {
    hero.element.classList.add("healing");

    // 英雄移動完之後 500ms，進行攻擊，並歸位
    setTimeout(function() {
      hero.heal();
      hero.element.classList.remove("healing");
    }, 500);
  }, 100);

  // 怪獸攻擊
  monsterAttack();
}
