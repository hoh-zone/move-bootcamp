module design::usdc ;
use sui::coin;

public struct USDC has drop {}
// 只有一个实例
// address::模块名::结构体
//  0x2::sui::SUI

// let witness = USDC{}
fun init(witness:USDC, ctx: &mut TxContext) {


    let (treasury, metadata) = coin::create_currency(
        witness,
        6, // decimals
        b"USDC", // symbol
        b"USDC", // name
        b"Don't ask why", // description
        option::none(), // icon url
        ctx
    );

    transfer::public_transfer(treasury, ctx.sender());
    transfer::public_freeze_object(metadata);
}
