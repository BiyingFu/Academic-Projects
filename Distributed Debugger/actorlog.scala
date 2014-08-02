import java.io._

class actorlog (var name: String){
  
  def logging (msg: Int, act: Int)= {
      
      var f1 = new BufferedWriter(new FileWriter(name, true));
	
      var wrt: String=null;
      
      if(msg == 1){
        wrt="\nMessage sent to actor "
      }
      else if(msg==2){
        wrt="\nMessage received from actor "
      }
      if(act<5)
	    f1.write(wrt+ act+ "\n")
	  else if (act==5)
	    f1.write(wrt+ "handler \n")
      
    	
      f1.close
      
  }
  def logging ={

    var f1 = new BufferedWriter(new FileWriter(name, true));
    
	f1.write("\nProcess Terminated!")
	
    f1.close()
    
  }
  
}