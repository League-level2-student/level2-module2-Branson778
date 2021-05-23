//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int segX;
int segY;

// Add a constructor with parameters to initialize each variable.
public Segment(int segX, int segY){
  this.segX = segX;
  this.segY = segY;
}


}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
Segment head;
int foodX;
int foodY;
int direction = UP;
int foodEaten = 0;
ArrayList<Segment> tail = new ArrayList<Segment>();




//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500,500);
head = new Segment(20,10);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
    foodX = ((int)random(50)*10);
    foodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(#F3A1FC);
  drawFood();
  move();
  drawSnake();
  eat();
}

void drawFood() {
  //Draw the food
    fill(#D13B3B);
  rect(foodX,foodY,10,10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
 fill(#237912);
  rect(head.segX,head.segY,10,10);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 
for(int i = 0; i < tail.size(); i++ ){
  Segment tailPart = tail.get(i);
  rect(tailPart.segX,tailPart.segY,10,10);
}
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  checkTailCollision();
  drawTail();
  tail.add(new Segment(head.segX, head.segY));
  tail.remove(0);
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if(key==CODED){
    if(keyCode==UP){
      direction = UP;
      print("UP");
    }
    if(keyCode==DOWN){
      direction = DOWN;
      print("DOWN");
    }
    if(keyCode==LEFT){
      direction = LEFT;
      print("LEFT");
    }
    if(keyCode==RIGHT){
      direction = RIGHT;
      print("RIGHT");
    }
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    head.segY -= 10; 
    break;
  case DOWN:
    head.segY +=10; 
    break;
  case LEFT:
   head.segX -=10; 
    break;
  case RIGHT:
    head.segX +=10; 
    break;
  }
  checkBoundaries();
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if(head.segX> 500){
   head.segX=0;
 }
 if(head.segX<0){
   head.segX=500;
 }
 if(head.segY>500){
   head.segY=0;
 }
 if(head.segY<0){
   head.segY=500;
 }
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
 if(head.segX==foodX && head.segY==foodY){
   foodEaten++;
   dropFood();
   print("eat");
 }
}
