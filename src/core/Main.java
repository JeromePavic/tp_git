import entities.Droits;
import entities.User;

public class Main{
	
	public static void main(String[] args){
		
	User user1 = new User("Dupond","Jean","Dupjea","12345");
	User user2 = new User("Michou","Isabelle","Miisa","98745");
		
	Droits droit1 = new Droits();
	Droits droit2 = new Droits();
	Droits droit3 = new Droits();
	Droits droit4 = new Droits();
	
	user1.setDroits(droit1);
	user1.setDroits(droit2);
	user2.setDroits(droit3);
	user2.setDroits(droit4);
	
	}
}