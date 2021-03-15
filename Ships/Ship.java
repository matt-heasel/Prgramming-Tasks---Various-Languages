import java.util.*;
public class Ship
{

    public String name;
    private int size;
    public Ship()
    {
       
    }

    public Ship(String shipName, int shipSize)
    {
        name = shipName;
        size = shipSize;
    }


    public Ship buildShip(){
        Scanner stdin = new Scanner (System.in);

        System.out.println("\nEnter ship Name: ");
        String shipName = stdin.nextLine();

        System.out.println("\nEnter ship Size: ");
        System.out.println("1.Small: ");
        System.out.println("2.Medium: ");
        System.out.println("3.Large: ");
        int size = stdin.nextInt();

        Ship ship = new Ship(shipName,size);
        return ship;
    }

    public Ship(String shipName){
        name = shipName;
    }

    public String getName(){
        return name;   
    }

    public int getSize(){
        return size;   
    }


    public String toString() { 
        return String.format("Ship Name:  " + name +" Ship Size: "+size); 
    }

}
