/// Module: ability
module ability::only_key ;
use std::address;
use sui::object;
use sui::object::UID;
use sui::transfer::transfer;
use sui::tx_context::{TxContext, sender};


public struct KeyName has key {
    id: UID,
}

public struct Struct{}

public struct Obj has key{
    id: UID,
    amount:u64,
}


public struct OnlyKey has key {
    id: UID,
    age: u8,
}


public fun mint(ctx: &mut TxContext) {
    let only = OnlyKey {
        id: object::new(ctx),
        age: 10,
    };

    transfer(only, sender(ctx));
}


public fun del(only: OnlyKey, ctx: &mut TxContext) {
    let OnlyKey { id, age } = only;
    object::delete(id);
    let _ = age;
}

public entry fun mint_obj(ctx: &mut TxContext) {
    let obj = Obj{
        id:object::new(ctx),
        amount:0,
    };
    transfer(obj,ctx.sender() );
}

public entry fun obj_transfer(obj: Obj, to:address,ctx: &mut TxContext) {
    if(obj.amount > 1000){
        abort 0;
    };

    // 交100

    transfer(obj,to );
}




public fun my_transfer(only: OnlyKey, addr: address) {
    if (only.age > 10) {
        transfer(only, addr);
    }else {
        abort 10u64
    }
}


