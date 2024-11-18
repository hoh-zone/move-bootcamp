module flashlend::flashlend;
use sui::balance;
use sui::balance::Balance;
use sui::coin;
use sui::coin::Coin;
use sui::sui::SUI;
use sui::transfer::share_object;
use sui::transfer::transfer;

// 1/100

public struct FlashLend has key{
    id:UID,
    val:Balance<SUI>,
}


public struct AdminCAp has key{
    id:UID,
}

public struct Recive{
    amt:u64
}


fun init(ctx:&mut TxContext){
    let flash_lend = FlashLend{
        id:object::new(ctx),
        val: balance::zero()
    };
    share_object(flash_lend);


    let admin = AdminCAp{
        id:object::new(ctx),
    };
    transfer(admin, ctx.sender());

}


public fun lend(pool:&mut FlashLend,amt:u64,ctx:&mut TxContext): (Coin<SUI>,Recive){
    let bal = pool.val.split(amt);
    let sui_coin = coin::from_balance(bal,ctx);
    let re_amt =  amt +  amt / 100;
    let recive = Recive{
        amt:re_amt
    };
    (sui_coin,recive)
}

public fun repay(pool:&mut FlashLend,re:Recive,in :Coin<SUI>, ctx:&mut TxContext){
    let in_amt = in.value();
    // 判断金额
    assert!(in_amt == re.amt,0x99);

     let   bal = coin::into_balance(in);
     pool.val.join(bal);
    let Recive{amt:_} = re;
}


#[test]
fun handle(){
    //let (sui ,re) =    lend();

     // 借 100SUI
    //  xxx
    // swap1 SUI -> USDC
    // swap2 USDC -> SUI
    // 变成 110 SUI

//
 //  给协议换了101SUI repay(101)

 //   赚了 9 SUI

}





