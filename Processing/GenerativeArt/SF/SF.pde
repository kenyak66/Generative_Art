void setup() {
  size(1200, 1800);
  background(0); // 背景色を黒に設定
  
  // ランダムな要素の描画
  drawRandomElements();
  
  // PNGファイルとして保存
  save("cool_poster3.png");
}

void drawRandomElements() {
  int numShapes = 100; // 描画する四角形の数
  
  for (int i = 0; i < numShapes; i++) {
    // ランダムな四角形の座標とサイズを決定
    float x = random(width);
    float y = random(height);
    float size = random(50, 200);
    
    // 四角形の色を白に設定
    int shapeColor = color(255);
    
    // 四角形を描画
    fill(shapeColor);
    rectMode(CENTER);
    rect(x, y, size, size);
  }
}
