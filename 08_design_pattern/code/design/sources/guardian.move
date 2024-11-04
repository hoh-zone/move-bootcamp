module design::guardian ;

public struct Guardian<phantom T: drop> has key, store {
    id: UID
}


public fun create_guardian<T: drop>(
    _witness: T, ctx: &mut TxContext
): Guardian<T> {
    Guardian { id: object::new(ctx) }
}




