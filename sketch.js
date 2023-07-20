// Mr. Kitty Codes, https://mrkittycodes.com
// https://youtu.be/S1jMxo4QI44
// https://editor.p5js.org/MrKittyCodes/sketches/v1bep4AG2
// Copyright 2022, Christopher Cotton

var bY = 0;
var score = 0;
function setup() {
  createCanvas(400, 400);
}

function draw() {
  fill(255);
  background(0, 0, 0);
  ellipse(200, bY, 20, 20);
  bY = bY + 5;
  
  if (bY > 400) {
    bY = 0;
  }

  text("Your Score:", 300, 50);
  text(score, 300, 75);
}

function keyPressed() {
  if (key == 's' && bY > 350) {
    score = score + 25;
  }
}
