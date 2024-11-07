module operator::as_op ;

#[allow(unused_variable)]
fun init(_: &mut TxContext) {
    let a: u16 = 1000;
    let b: u64 = 999;
    let c: u32 = 1000;

    let dd = a as u64 + b;

    let d = b + (c as u64) + (c as u64);

    let f = a + (c as u16);

    let u8_1: u8 = 222;
    let u8_2: u8 = 222;
    let u8_3 = u8_1 + u8_2;
}

