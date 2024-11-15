module ability::not_any ;

public struct NotAny {
    age: u8
}


fun init(_: &mut TxContext) {
    let not = NotAny {
        age: 10
    };


    let not =  handle(not);

    delete(not);
    //let NotAny{age} = not;
}


public fun handle(not: NotAny) :NotAny{
    //// xxx
    ///
    not
}


public fun delete(not: NotAny) {
    let NotAny { age } = not;
    let _ = age;
}

