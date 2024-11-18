module design::witness ;
use std::string;
use std::string::String;
use sui::transfer::transfer;

// 是见证另外一个资源的诞生

public struct MyWitness has drop, store{}

public struct MyWitnessStore has key{
    id:UID,
    my:MyWitness,
}

// 房地产建房许可证，作用的话就是允许建房子

public struct House has key{
    id:UID,
    name:String,
}


public fun create_house(_:MyWitness,ctx:&mut TxContext): House{
    House{
        id:object::new(ctx),
        name:string::utf8(b"da a")
    }
}


fun init(ctx:&mut TxContext){
    let mywit = MyWitness{};
    let house = create_house(mywit,ctx);
    transfer(house,ctx.sender());

    let mywit = MyWitness{};
    let house = create_house(mywit,ctx);
    transfer(house,ctx.sender());

    let mywit = MyWitness{};
    let house = create_house(mywit,ctx);
    transfer(house,ctx.sender());

    let mywit = MyWitness{};
    let house = create_house(mywit,ctx);
    transfer(house,ctx.sender());
}










