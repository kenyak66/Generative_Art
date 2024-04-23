void setup() {
  size(800, 600, P3D); // 3Dキャンバスの作成
  drawRing(); // 1度だけリングを描画
}

void draw() {
  // 空のdraw関数を記述して、プログラムを実行したときにアニメーションが開始しないようにします。
}

void drawRing() {
  background(0); // 背景を黒色に設定
  lights(); // ライティングを有効にする
  
  // 同時に描画するリングの数
  int numRings = 5;
  
  for (int i = 0; i < numRings; i++) {
    // ランダムな回転角度とY座標のずれを生成
    float angle = random(TWO_PI); // 0から2πの間でランダムな角度を生成
    float offsetY = random(-100, 100); // -100から100の間でランダムなY座標のずれを生成
    
    translate(width/2, height/2 + offsetY); // 中心をキャンバスの中心に移動し、Y座標をずらす
    rotateX(PI/3); // X軸を回転
    rotateY(angle); // Y軸をランダムな角度で回転
    
    stroke(0, 255, 0); // 線の色を緑色に設定
    noFill(); // 塗りつぶしを無効にする
    
    float r1 = 200; // 内側のリングの半径
    float r2 = 250; // 外側のリングの半径
    int segments = 100; // 分割数
    
    beginShape(QUAD_STRIP); // 四角形ストリップを開始
    for (int j = 0; j <= segments; j++) {
      float theta = map(j, 0, segments, 0, TWO_PI); // 角度を計算
      float x1 = cos(theta) * r1; // X座標を計算
      float z1 = sin(theta) * r1; // Z座標を計算
      float x2 = cos(theta) * r2; // 外側のX座標を計算
      float z2 = sin(theta) * r2; // 外側のZ座標を計算
      vertex(x1, 0, z1); // 頂点を追加
      vertex(x2, 0, z2); // 外側の頂点を追加
    }
    endShape(); // 図形を終了
  }
  
  // 画像を保存
  save("ring_render.png");
}
