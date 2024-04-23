import gifAnimation.*;
GifMaker gifExport;

void setup() {
    size(800, 800);
    background(#eeeeee);
    //noLoop();
    gifExport = new GifMaker(this, "circle_prototype.gif");
    gifExport.setRepeat(0); // 0 は無限ループを意味します
    gifExport.setQuality(255);
}

void draw() {
    background(0);
    //background(random(255), random(255), random(255));

    translate(width/2, height/2);
    // for (int n = 0; n < 10; ++n) {
    //     stroke(random(255), random(255), random(255));
    //     for (int a = 0; a < 360; a += 1) {
    //         float x = random(50, 150);
    //         float xx = random(150, 350);
    //         pushMatrix();
    //         rotate(radians(a));
    //         strokeCap(CORNER);
    //         strokeWeight(4);
    //         //stroke(random(255), random(255), random(255));
    //         line(x, 0, xx, 0);
    //         popMatrix();
    //     }
    // }

    for (int a = 0; a < 360; a += 1) {
        float x = random(50, 150);
        float xx = random(150, 350);
        pushMatrix();
        rotate(radians(a));
        strokeCap(CORNER);
        strokeWeight(4);
        stroke(255);
        //stroke(random(255), random(255), random(255));
        line(x, 0, xx, 0);
        popMatrix();
    }

    gifExport.addFrame();
    //saveFrame("circle-####.png");
}

void keyPressed() {
    gifExport.finish(); // キーが押されたときにGIFを保存
    redraw();
}
