float sensesize = 1.0f;//点の感覚

float wavewidth = 50.0f;//振幅
float wavesize = 100.0f;//波長

float wavex = 0.0f;
float wavey = 0.0f;

void setup(){
  size(640,480);

}

void draw(){
  background(255);
  wavewidth = mouseY / 5;
  wavesize = mouseX / 10;
  for(int i = 0;i <= 2000;i++){
    wavex = i * sensesize;
    wavey = wavewidth * sin(2 * PI * (wavex / wavesize));
    point(wavex, wavey + 240);
  }
  

}