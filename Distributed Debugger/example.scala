import scala.actors.Actor
import scala.actors.Actor._

case object stop

class Boss{
  
  var nxt=0
  
  val a1=new Array[example](4) 

  
  def starting()= {
    for(i <- 0 to 3){
      a1(i).start
      a1(i).id=i
      
      if(i==0){
        a1(i).file="Log_Actor1.txt";
      }
      else if(i==1){
        a1(i).file="Log_Actor2.txt";
      }
      else if(i==2){
        a1(i).file="Log_Actor3.txt";
      }
      else if(i==3){
        a1(i).file="Log_Actor4.txt";
      }
      
    }
  }

  
  def init(node:Int)= {
    
    nxt=node+1
    
    if(nxt==4)
      nxt=0
    
    System.out.println(nxt)	
    	
    a1(nxt)!(node)

  }
  
  

}


class example extends Actor {
  var id= -1
  var file="default.txt"
  
  var Handle = new Boss
  
  def act()= {
    loop{
      var count=0
      react{
        case (from_node:Int) => {
           count+=1
          
           if (count>10)
             exit();
           
        var a1= new actorlog(file)
        a1.logging(2, from_node)
        
          if (count==10)
            self ! stop
            else
              Handle.init(id)
        }
        
        case stop => {
         var a1= new actorlog(file)
         a1.logging
         exit();
          
        }
      }
    }
  }
  
  
 }
