module obj::owner;
use sui::object;
use sui::transfer::{transfer, public_transfer, share_object, freeze_object};

public struct RMB has key, store{
    id:UID,
    amount:u64,
}

public struct Dog has key {
    id: UID,
    age: u8,
    cnt: u64,
}



fun init(ctx: &mut TxContext) {
    let rmb = RMB{
        id: object::new(ctx),
        amount:100,
    };

   //  transfer(rmb,ctx.sender());
   public_transfer(rmb,ctx.sender());

    let dog1 = Dog{
        id: object::new(ctx),
        age: 1,
        cnt:0,
    };

    share_object(dog1);


    let dog2 = Dog{
        id: object::new(ctx),
        age: 1,
        cnt:0,
    };

    transfer(dog2,ctx.sender());


    let dog3 = Dog{
        id: object::new(ctx),
        age: 1,
        cnt:0,
    };
    freeze_object(dog3);

}


public fun touch(dog: &mut Dog,_: &mut TxContext){
    dog.cnt = dog.cnt +1;
}



public fun read_dog_age(dog: &Dog, _: &mut TxContext){
    let age = dog.age;
    let _= age;
}


public entry fun use_dog(dog: Dog,to:address, _ctx: &mut TxContext) {
    // 把对象的所有权交给了这个函数

    // 1    transfer(dog, @0x3333);


    // 2    delete(dog, @0x3333);


    // transfer(dog, @0x3333)
    transfer(dog, address);
}



