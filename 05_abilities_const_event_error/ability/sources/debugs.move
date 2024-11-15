module ability::debugs ;
use std::debug::print;
#[test_only]
use std::debug::print_stack_trace;

public struct People has drop {
    age: u8,
}

fun init(ctx: &mut TxContext) {

    let p = People {
        age: 10,
    };

    print(&p);
}



#[test]
fun test_a() {
    let p = People {
        age: 10,
    };

    print_stack_trace();
    print(&p);

    let int10: u32 = 10;
    print(&int10);


}

