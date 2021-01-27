import controlP5.*;

int x1, x2, x3, y1, y2, y3;



float number = 0.0;
ControlP5 cp5;

Textfield textfieldx1;
Textfield textfieldx2;
Textfield textfieldx3;
Textfield textfieldy1;
Textfield textfieldy2;
Textfield textfieldy3;

Button button1;

void setup() {
  size(800, 600);
  // vi vælger en font som skrifttype
  PFont font = createFont("arial", 24);

  cp5 = new ControlP5(this);
  
  //x1 textfield
  textfieldx1=cp5.addTextfield("x1");
  textfieldx1.setPosition(50, 50)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  //x2 textfield
  textfieldx2=cp5.addTextfield("x2");
  textfieldx2.setPosition(100, 50)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  //x3 textfield
  textfieldx3=cp5.addTextfield("x3");
  textfieldx3.setPosition(150, 50)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  //y1 textfield 
  textfieldy1=cp5.addTextfield("y1");
  textfieldy1.setPosition(50, 100)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  //y2 textfield
  textfieldy2=cp5.addTextfield("y2");
  textfieldy2.setPosition(100, 100)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;

  //y3 textfield 
  textfieldy3=cp5.addTextfield("y3");
  textfieldy3.setPosition(150, 100)
    .setSize(50, 50)
    .setFont(font)
    .setColor(color(255))
    .setColorCursor(color(255))
    .setAutoClear(false)
    .setLabel("")
    ;


  //Knap
  button1=cp5.addButton("generate");
  button1.setPosition(500, 550)
    .setSize(300, 50)
    .setLabel("Create Trekant")
    .setFont(font)
    ;
  textFont(font);
}

void draw() {
  background(50);
  fill(255);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
}

public void generate() {
  String input;
  
  input = cp5.get(Textfield.class, "x1").getText();
  x1 = int(input);

  input = cp5.get(Textfield.class, "x2").getText();
  x2 = int(input);

  input = cp5.get(Textfield.class, "x3").getText();
  x3 = int(input);

  input = cp5.get(Textfield.class, "y1").getText();
  y1 = int(input);

  input = cp5.get(Textfield.class, "y2").getText();
  y2 = int(input);

  input = cp5.get(Textfield.class, "y3").getText();
  y3 = int(input);
}
