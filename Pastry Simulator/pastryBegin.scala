
import scala.actors.Actor
import scala.actors.Actor._
import Array.ofDim;
import scala.Math

//b taken as 2, therefore |M|= 4, |L|= 4

class Pastry (N_node: Int, N_req: Int) extends Actor {

  val a=(Math.log(N_node)/Math.log(4)).toInt
  var L=Array.ofDim[Int](N_node, 8)
  var M=Array.ofDim[Int](N_node,4)
  var R=Array.ofDim[Int](N_node,a, 3)
  
  def route(msg: String, key: Int) = {
  }
 
  
  def act(){
    
    loop{
      react{
        case 1 =>{
          println("hi")
        }
      }
    }
  }
  def deliver(msg: String, key: Int) = {
    
  }
  
  def forward (msg: String, key: Int, nextId: Int) ={
    
  }
  
  def Handle(){
    
    var b_ID=Array.ofDim[Int](N_node, 4)
    var ID=Array[Int](N_node)
    //Generate node Ids
    
    var i=0
    var j=0

    while(i != N_node-1){
      while (j !=3 ) {
        b_ID(i)(j)=rand()
        j+=1
      }
      ID(i)=atoi(b_ID(i))
      //checking if the node ID does not already exist
      var k=0
      while(k!=i-2){
        if(ID(k)==ID(i)){
          k=i
        }
        else
          i+=1
      }
    }
    
    //Generating Neighborhood Set M and Leaf Set L
    
    for(i <-0 until N_node){
      M(i)(0)=ID(i)
      L(i)(0)=ID(i)
    }
    		//Neighbourhood set M
    for(i <- 0 until N_node){
      if(i==0){
        M(i)(1)=ID(N_node-3)
        M(i)(2)=ID(N_node-2)
      }
      
      else if(i==1){
        M(i)(1)=ID(N_node-2)
        M(i)(2)=ID(0)
      }
      else{
        M(i)(1)=ID(i-2)
        M(i)(2)=ID(i-1)
      }
      
      if(i==N_node-1){
        M(i)(3)=ID(0)
        M(i)(4)=ID(1)
      }
      else if(i==N_node-2){
        M(i)(3)=ID(N_node-1)
        M(i)(4)=ID(0)
      }
      else{
        M(i)(3)=ID(i+1)
        M(i)(4)=ID(i+2)        
      }
      
    }
    
    		//Leaf Set L
    for(i <- 0 until N_node){
      var temp1=0
      var temp2=0
      if(i==0){
        temp1=Math.abs(ID(i)-ID(1))
        L(i)(j)=ID(1)
      }
      else{
        temp1=Math.abs(ID(i)-ID(0))
        L(i)(j)=ID(i)
      }  
      
      var temp3=temp1
      
      for(j <- 0 until 8){
        
        for(k <- 0 until N_node){
          temp3=Math.abs(ID(i)-ID(k))
          if(temp3!=0 && temp2<temp3 && temp3<=temp1){
            L(i)(j)=ID(k)
            temp1=temp3
          }
        }
        temp2=temp1
      }
      
    }
    
    //Constructing Routing Table   var R=Array.ofDim[Int](N_node,a, 3)
    var x_ID=Array[Int](4)
    for(i <- 0 until a){
      var m=0
      for(j <-0 until N_node){
        for(k <-0 until 3){
          if(j<k)
            x_ID(k)=b_ID(j)(k)
          else if(j==k)
            x_ID(k)=j
          else if(j>k)
            x_ID(k)=rand()
        }
        
        R(i)(j)(m)=atoi(x_ID)
        m+=1
      }
    }
    
    
  }
  
  def atoi(x: Array[Int]):Int ={
    var y=0
    var i=0
    
    while(i < 4){
      y+=x(i)
      i+=1
    }
    return y
  }
  
  def rand():Int ={
    var rnd = new scala.util.Random
    var range = 0 to 9
    var bit = range(rnd.nextInt(range length))
    return bit
  }
  
}

object pastryBegin {
  def main(args: Array[String]){
    /*
     * 
     * numNodes	= args[0]
     * numRequests = args[1]
     */
    
//    val numNodes=Integer.parseInt(args(0))
//    val numRequests=Integer.parseInt(args(1))

    val numNodes=5
    val numRequests=2
    
    val p1=new Pastry(numNodes, numRequests);
    p1.Handle()
  }
}

