module flow_con::if_con ;


fun init(_: &mut TxContext) {
    let mut x: u32 = 10;
    if (x > 5)  x = x - 5;


    let mut y = 10;


    if (y <= 10)  y = y + 1 else y = 10;
}

fun max(a: u32, b: u32): u32 {
    if (a > b) {
        a
    }else {
        b
    }
}

fun max2(a: u32, b: u32): u32 {
    if (a > b) {
        return  a
    }else {
        return  b
    }

}




