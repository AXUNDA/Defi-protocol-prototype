
import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


  

actor Dbank{
  stable var currentValue:Float = 1000;
  stable var startTime =Time.now();
  // currentValue := 400;
  // let id =123456789;
  Debug.print(debug_show(startTime));
  public func topUp(amount:Float){
    currentValue += amount;
    Debug.print(debug_show(currentValue));

  };
  public  func widthdraw(figure:Float){
    let tempVar:Float = currentValue - figure;
    if(tempVar >= 0){
      currentValue -= figure;
    Debug.print(debug_show(currentValue));
    
    // return currentValue;

    }else{
      Debug.print("the amount you  are trying to widthdraw is greater than what you have in your account")
    };
    




  };
  public query func checkBlance(): async Float{
    return currentValue

  };
  public func compound(){
    var currentTime = Time.now();
    var timeElapsed = currentTime-startTime;
    let  timeElapsedS =timeElapsed/1000000000;
    currentValue:=currentValue *(1.01**Float.fromInt(timeElapsedS));
    currentTime := startTime;

  };
  // topUp();
}
