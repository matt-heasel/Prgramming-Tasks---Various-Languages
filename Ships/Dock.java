import java.util.*;

public class Dock
{
    List<String> smallBerths = new ArrayList<String>(8);//8
    List<String> mediumBerths = new ArrayList<String>(8);//8
    List<String> largeBerths = new ArrayList<String>(4);//4

    List<Ship> waitingList = new ArrayList<Ship>(5);

    Scanner stdin = new Scanner (System.in);

    public Dock(){
        Ship shipBuilder = new Ship();

        boolean theEnd = false;
        while(theEnd != true){

            int option = menu();

            if(option == 1){//dock ship
                Ship boat = shipBuilder.buildShip();
                berth(boat);

            }else if(option == 2){//report
                report(smallBerths, " Small");
                report(mediumBerths, " Medium");
                report(largeBerths, " Large");
                System.out.println("Waiting List: "+waitingList);

            }else if(option == 3){//remove ship
                unDock();

            }else if(option == 4){//end session
                theEnd = true;
            }else{
                System.out.println("Alert! That is an invalid size!");

            }

        }
    }//end dock

    public void unDock(){
        Scanner scan = new Scanner (System.in);

        System.out.println("\nEnter ship Name: ");
        String searchItem = scan.nextLine();

        if(smallBerths.contains(searchItem)){//check arraylist for ship name
            smallBerths.remove(searchItem);

        }else if(mediumBerths.contains(searchItem)){
            mediumBerths.remove(searchItem);
        }else if(largeBerths.contains(searchItem)){
            largeBerths.remove(searchItem);
        }else{
            System.out.println("Ship not Docked here, Have you spelled it correctly?");   
        }
    }

    public void berth(Ship boat){
        if(boat.getSize() == 1){//if the boat is small, try to add to small arraylist
            if(smallBerths.size() !=8){//if small array is not at max size
                smallBerths.add(boat.name);//
            }else if(mediumBerths.size() !=8){//if small arraylist is full try to add to medium array
                mediumBerths.add(boat.name);

            }else if(largeBerths.size() != 4 ){//if medium arraylist is full, try adding to the large arraylist
                largeBerths.add(boat.name);
            }else if(waitingList.size() != 5){//if large arraylist is full try adding to waiting list
                waitingList.add(boat);   
            }else{//if this condition is reached there is no room at the port
                System.out.println("No room at the Port");
            }
            //end of small boat berthing
        }else if(boat.getSize() == 2){//if its a medium boat try add to medium, then large, then waiting list, otherwise reject
            if(mediumBerths.size() !=8){//try to add to medium array
                mediumBerths.add(boat.name);

            }else if(largeBerths.size() != 4 ){//if medium arraylist is full, try adding to the large arraylist
                largeBerths.add(boat.name);
            }else if(waitingList.size() != 5){//if large arraylist is full try adding to waiting list
                waitingList.add(boat);   
            }else{//if this condition is reached there is no room at the port
                System.out.println("No room at the Port");
            }
            //end of mediumboat berthing
        }else if(boat.getSize() == 3){
            if(largeBerths.size() != 4 ){//try adding to the large arraylist
                largeBerths.add(boat.name);
            }else if(waitingList.size() != 5){//if large arraylist is full try adding to waiting list
                waitingList.add(boat);   
            }else{//if this condition is reached there is no room at the port
                System.out.println("No room at the Port");
            }
        }  

    }//end berth

    public void report(List<String> array,String berthSize){
        System.out.println("\n*************************************************************************************\n");
        System.out.println("                                         DOCK REPORT ");
        Iterator<String> iter = array.iterator(); 

        System.out.println("\nThe"+berthSize+" Ships Docked"
            + " in this Port are: "); 
        while (iter.hasNext()) { 
            System.out.print("|"+iter.next() + "|\n"); 
        } 

        System.out.println("\n*************************************************************************************\n");

    }

    public int menu(){
        System.out.println("\nEnter an Option");
        System.out.println("1.Enter Ship to Dock: ");
        System.out.println("2.Report: ");
        System.out.println("3.Enter Ship to UnDock: ");
        System.out.println("4.Exit: ");

        int option = stdin.nextInt();

        return option;   
    }//end menu
    public void checkFreeSpaces(Ship boat){

    }

}//end class
