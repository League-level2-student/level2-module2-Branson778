package _04_animals_inheritance;

public class Animal {
 String name;
 String color;
 Boolean isGirl;
 
    public void printName() {
		System.out.println("My name is "+name);
	}
	
	public void eat() {
		System.out.println("Eating");
	}
	
	public void sleep() {
		System.out.println("Sleeping");
	}
	
	public void play() {
		System.out.println("Playing");
	}
}
