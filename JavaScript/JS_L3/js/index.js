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
  }

  die() {
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

// 英雄攻擊開始設定
function addSkillEvent() {
  var skill = document.getElementById("skill");
  skill.onclick = function() {
    heroAttack();
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

  }
}

// 攻擊開始後隱藏攻擊按鈕
function heroAttack() {
  document.getelementsByClassName("skill-block")[0].style.display = "none";
}

// 設定英雄與怪物動作的時間軸
