import scala.actors.Actor._

object begin{
  def main(args:Array[String]){
    
  var start=new Boss
  //start.start
  for(i <- 0 until 4)
    	start.a1(i)=new example()
    
  start.starting

    /*
    var start = new example
    start.start
	for(i <- 0 until 4)
    	start.a1(i)=new example()
    
    start.starting()
    start.init(5)
*/
  }
}
