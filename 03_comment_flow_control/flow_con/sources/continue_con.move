module flow_con::continue_con ;

fun init(_ctx: &mut TxContext) {
    let b = sum(10);
}


fun sum(n: u64): u64 {
    let mut sum = 0;
    let mut i = 0;
    while (i < n) { // 2
        i = i + 1;
        if (i % 20 == 0) continue; // 1

        sum = sum + i;
    };

    sum
}

