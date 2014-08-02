import scala.actors.Actor
import scala.actors.Actor._

case object msg
case object stop

class FullGossip (n: Int) extends Actor {

  def act{
    var count=0
    while(true){
      receive{
        case msg => {
          count+=1
        
          if (count==10)
            self ! stop
            
          initialize
        
        }
      }
    }
  }
  
  def initialize={
    var nodes=new Array[FullGossip](n)
    
    var rnd = new scala.util.Random
    var range = 0 to n-1
    var next = range(rnd.nextInt(range length))
    
    nodes(next)! msg
    
  }

}

class LineGossip (n: Int, var x:Int){
  def act{
    var count = 0
    while(true){
      receive{
        case msg => {
          count+=1
        
          if (count==10)
            self ! stop
            
          initialize
        }
      }
    }
  }
  
  def initialize={
    var node=new Array[LineGossip](n)
    
    var rnd = new scala.util.Random
    var range = 0 to 1
    var next = range(rnd.nextInt(range length))
    
    if(next==1){
      x+=1
      //node(x)
      nodes(x)! msg
    }
    if(next==0){
      x-=1
      nodes(x)! msg
    }
    
        
  }
}

object gossip {
    def main(args: Array[String]){
      var n = Integer.parseInt(args(0))
      
      if (args(1)=="full" && args(2)=="gossip"){
        
        var x= new FullGossip(n)
        x.initialize
      }
      
      if (args(1)=="line" && args(2)=="gossip"){
        var rnd = new scala.util.Random
        var range = 0 to 1
        var nxt = range(rnd.nextInt(range length))

        var x= new LineGossip(n,nxt)
        x.initialize
        
      }

    }
}
