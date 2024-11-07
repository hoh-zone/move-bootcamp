module primitive::primitive ;

#[allow(unused_variable)]
fun init(_: &mut TxContext) {
    let int_8 = 8u8;

    let int2_8 : u8 = 8;
    let int3_8  = 8u8;
    let int2_8  = 8;

    let int_16 = 16u16;
    let int_32 = 32u32;
    let int_32_1 = 320;
    let int_64 = 32u64;
    let int_128 = 32u128;
    let int_256 = 32u256;
    let int_spit: u64 = 111_1_1_1_222;

    let int_spit: u64 = 1_111_11_222_111_111_222;

    let int_spit: u128 = 111_111_222;
    let int_spit: u128 = 1111112_223_132_324;


    let int_spit: u64 = 0x000;

    let int_88: u64 = 0x0fff;

    let hex_u8: u8 = 0x1;
    let hex_u16: u16 = 0x1BAE;
    let hex_u32: u32 = 0xDEAD80;
    let hex_u64: u64 = 0xCAFE;
    let hex_u128: u128 = 0xDEADBEEF;
    let hex_u256: u256 = 0x1123_456A_BCDE_F;


    let bool_false = false;
    let bool_true = true;


    let bool_false = false;
    let bool_true: bool;
    bool_true = true;

    let addr: address = @0x1;

    let addr: address =@0x1;
    let addr2 = @0x2;

    let address1 = @0x1; // shorthand for 0x0000000000000000000000000000000000000000000000000000000000000001
    let address2: address = @0x42; // shorthand for 0x0000000000000000000000000000000000000000000000000000000000000042
    let address3: address = @0xDEADBEEF; // shorthand for 0x00000000000000000000000000000000000000000000000000000000DEADBEEF
    let address4: address = @0x000000000000000000000000000000000000000000000000000000000000000A;

    let address_2 = @primitive;
    let hello1 = @hello1;
    let my_address = @my_address;
}

