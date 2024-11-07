module function::function ;


fun init(_: &mut TxContext) {}

fun a() {}

fun aa(){
    let a: u64;
    a = 10;
    a();
}

public fun b() {}

public(package) fun c() {}


public entry fun d() {}


entry fun dd() {}

entry fun dc() {}



public fun f(a: u32, b: u32): bool {
    a > b
}

public fun max(a: u32, b: u32): u32 {
   if (a > b) {
       a
   }else {
       b
   }
}


public fun f2(a: u32, b: u32): (bool, bool) {
    (a > b, a < b)
}


