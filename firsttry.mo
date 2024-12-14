import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor {
  stable var x : Nat = 0;
  var y : Nat = 0;
  

  public func incrementX() : async Nat{
    x += 1;
    return x;
  };

  public func decreaseX() : async Nat{
    if (x==0){
      Debug.print("X cannot be decreased");
    }else{
      x -= 1;
    };

    return x;
  };

  public func setX10() : async Nat{
     x := 10;
    return x;
  };

  public func incrementY() : async Nat{
    y += 1;
    return y;
  };

  public func decreaseY() : async Nat{
    if ( y== 0){
      Debug.print("Y cannot be decreased");
    }else{
      y -= 1;
    };

    return y;
  };

  public func setY10() : async Nat{
     y := 10;
    return y;
  };

  public func getX() : async (){
    Debug.print("x = " # Nat.toText(x));
  };

  public func getY() : async (){
    Debug.print("y = " # Nat.toText(y));
  };

  public func sum() : async (){
    let result = x + y;
    Debug.print("X + Y = " # Nat.toText(result));
  };

  public func diff() : async (){
    let result = x - y;
    Debug.print("X - Y = " # Nat.toText(result));
  };

  
};
